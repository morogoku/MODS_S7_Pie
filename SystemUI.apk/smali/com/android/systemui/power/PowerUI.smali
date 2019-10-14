.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"

# interfaces
.implements Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerUI$ThermalEventListener;,
        Lcom/android/systemui/power/PowerUI$WarningsUI;,
        Lcom/android/systemui/power/PowerUI$Receiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final SIX_HOURS_MILLIS:J


# instance fields
.field private mBatteryChargingType:I

.field private mBatteryHealth:I

.field private mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBatteryHighVoltageCharger:Z

.field mBatteryLevel:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mBatteryOnline:I

.field private mBatteryOverheatLevel:I

.field private mBatterySlowCharger:Z

.field mBatteryStatus:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mBatterySwellingMode:I

.field private mBatteryWaterConnector:Z

.field private mBootCompleted:Z

.field private mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

.field private mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

.field private mChargerAnimationWindowManager:Landroid/view/WindowManager;

.field private mCurrentOrientation:I

.field private mDensity:I

.field private mDismissBatteryHealthInterruptionWarning:Z

.field private mDisplay:Landroid/view/Display;

.field private mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

.field private mFontScale:F

.field private mFullyConnected:Z

.field private mGearVrDocked:Z

.field private final mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

.field private final mHandler:Landroid/os/Handler;

.field private mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

.field private mInvalidCharger:I

.field private mIsChargerAnimationPlaying:Z

.field private mIsDeviceMoving:Z

.field private mIsHiccupState:Z

.field private mIsMotionDetectionSupported:Z

.field private mIsPowerSupplyingActivated:Z

.field private mIsRunningLowBatteryTask:Z

.field private mIsRunningOverheatWarningTask:Z

.field private mIsRunningStopPowerSoundTask:Z

.field private mIsSContextEnabled:Z

.field private mIsSContextListenerRigstered:Z

.field private mIsScreenOn:Z

.field private mIsShutdownTaskDelayed:Z

.field private mIsUltraFastCharging:Z

.field private final mLastConfiguration:Landroid/content/res/Configuration;

.field private mLowBatteryAlertCloseLevel:I

.field private final mLowBatteryReminderLevels:[I

.field mLowBatteryWarningTask:Ljava/lang/Runnable;

.field private mLowWarningShownThisChargeCycle:Z

.field private mNextLogTime:J

.field private mNumTemps:I

.field mOverheatShutdownWarningTask:Ljava/lang/Runnable;

.field mOverheatWarningTask:Ljava/lang/Runnable;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlugType:I

.field private mPowerManager:Landroid/os/PowerManager;

.field final mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mRecentTemps:[F

.field private mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSIOPLevel:I

.field private mScreenOffTime:J

.field mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mSevereWarningShownThisChargeCycle:Z

.field mStopPowerSoundTask:Ljava/lang/Runnable;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThermalService:Landroid/os/IThermalService;

.field private mThresholdTemp:F

.field private mTimeRemaining:J

.field private final mUpdateTempCallback:Ljava/lang/Runnable;

.field private mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

.field private mWirelessFodState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "PowerUI"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/power/PowerUI;->SIX_HOURS_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mTimeRemaining:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const/16 v2, 0x7d

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    const/16 v2, 0x64

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    new-instance v3, Lcom/android/systemui/power/-$$Lambda$Xy1vzUdmCVpH_1hTsQ2L8yUibUw;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/-$$Lambda$Xy1vzUdmCVpH_1hTsQ2L8yUibUw;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mUpdateTempCallback:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningStopPowerSoundTask:Z

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySlowCharger:Z

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningOverheatWarningTask:Z

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsShutdownTaskDelayed:Z

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsPowerSupplyingActivated:Z

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mGearVrDocked:Z

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mCurrentOrientation:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsMotionDetectionSupported:Z

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsHiccupState:Z

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessFodState:Z

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsScreenOn:Z

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsUltraFastCharging:Z

    new-instance v0, Lcom/android/systemui/power/PowerUI$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/power/PowerUI$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatWarningTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/power/PowerUI$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$4;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/power/PowerUI$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$5;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/systemui/power/PowerUI$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$6;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mStopPowerSoundTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/power/PowerUI$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$7;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    new-instance v0, Lcom/android/systemui/power/PowerUI$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$8;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

    new-instance v0, Lcom/android/systemui/power/PowerUI$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$9;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/power/PowerUI;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/power/PowerUI;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/power/PowerUI;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/power/PowerUI;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/power/PowerUI;->playChargerConnectionSound(ZII)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/power/PowerUI;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/power/PowerUI;->playChargerConnectionAnimation(ZII)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/power/PowerUI;ZIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/power/PowerUI;->checkConnectedChargerStatus(ZIII)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/power/PowerUI;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/PowerUI;->checkBatterySwellingStatus(II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/power/PowerUI;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/PowerUI;->checkBatteryHealthInterruptionStatus(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/power/PowerUI;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/power/PowerUI;->sendLowBatteryDumpIfNeeded(III)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkPowerSharingCableStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/power/PowerUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkFullBatteryStatus(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/power/PowerUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkIncompatibleChargerConnection(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkWaterDetectionStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkWirelessChargingFodStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkPowerSupplyingStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->updateBatteryNotificationLanguage()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkCoolDownStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2902(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    return p1
.end method

.method static synthetic access$3102(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningOverheatWarningTask:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsShutdownTaskDelayed:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsShutdownTaskDelayed:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    return v0
.end method

.method static synthetic access$3602(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningStopPowerSoundTask:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/power/PowerUI;)Landroid/hardware/scontext/SContextListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/power/PowerUI;)Landroid/hardware/scontext/SContextManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mGearVrDocked:Z

    return p1
.end method

.method static synthetic access$4302(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/systemui/power/PowerUI;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mUpdateTempCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySlowCharger:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsUltraFastCharging:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    return p1
.end method

.method private checkBatteryHealthInterruptionStatus(II)V
    .locals 10

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const v3, 0x10000006

    const-wide/32 v4, 0xea60

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-ne v6, v0, :cond_5

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    const/4 v8, 0x6

    if-eq v7, v0, :cond_0

    const/4 v0, 0x7

    iget v9, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v0, v9, :cond_0

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v8, v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-nez v0, :cond_1

    const-string v2, "PowerUI"

    const-string/jumbo v3, "onReceive : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v2, "PowerUI"

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-boolean v2, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v2, v8, :cond_2

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :goto_0
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v2, v8, :cond_3

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showBatteryHealthInterruptionWarning()V

    :goto_1
    goto/16 :goto_5

    :cond_4
    if-ne v2, p2, :cond_e

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showBatteryHealthInterruptionWarning()V

    goto/16 :goto_5

    :cond_5
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v6, v0, :cond_a

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v2, v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-nez v0, :cond_6

    const-string v2, "PowerUI"

    const-string/jumbo v3, "onReceive : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const-string v2, "PowerUI"

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-boolean v2, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showBatteryHealthInterruptionWarning()V

    :goto_3
    goto :goto_5

    :cond_8
    if-ne v7, p2, :cond_e

    sget-boolean v0, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showBatteryHealthInterruptionWarning()V

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v6, v0, :cond_b

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v7, v0, :cond_b

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v7, v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissBatteryHealthInterruptionWarning()V

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    :goto_4
    sget-boolean v0, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_e
    :goto_5
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v0, v2, :cond_f

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissBatteryHealthInterruptionWarning()V

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    :cond_f
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq p2, v0, :cond_13

    const/4 v0, 0x5

    if-eq v0, p2, :cond_10

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v0, v1, :cond_10

    const/16 v0, 0x9

    if-eq v0, p2, :cond_10

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v0, v1, :cond_13

    :cond_10
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/SettingsManager;->getScreenWakeupOnPowerState()Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "PowerUI"

    const-string v2, "Knox Customization: shouldWakeUp: not waking when battery health is changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    const-string v1, "PowerUI"

    const-string v2, "Overvoltage/Undervoltage status is changed so turn on the screen."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    if-nez v1, :cond_12

    const-string v2, "PowerUI"

    const-string/jumbo v3, "turnOnScreen : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "BatteryStateChanged"

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IPowerManager;->wakeUp(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v2

    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "turnOnScreen : Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_6
    return-void
.end method

.method private checkBatterySwellingStatus(II)V
    .locals 3

    const-string v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Battery swelling mode - priorBatterySwellingMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mBatterySwellingMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-eq p2, v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    invoke-interface {v0, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showBatterySwellingNotice(I)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissBatterySwellingNotice()V

    :cond_2
    :goto_0
    return-void
.end method

.method private checkConnectedChargerStatus(ZIII)V
    .locals 8

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/16 v1, 0x2e

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-ne v3, v0, :cond_c

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    const/4 v6, 0x1

    if-eq v6, v0, :cond_7

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v3, v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v5, v0, :cond_6

    const/16 v0, 0x64

    iget v7, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v0, v7, :cond_1

    iput v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    :goto_0
    if-eq v6, p2, :cond_2

    if-ne v3, p2, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingTypeSwitchedNotice(Z)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsMotionDetectionSupported:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-ne v0, v5, :cond_5

    :cond_4
    const-string v0, "PowerUI"

    const-string v3, "Register SContextListener"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v0, v3, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    iput-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    :cond_5
    if-eq v5, p2, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessFodState:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissWirelessFodAlertDialog()V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_3

    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    if-nez v0, :cond_8

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_2

    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySlowCharger:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_2

    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    if-eqz v0, :cond_a

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_2

    :cond_a
    iput v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    :goto_2
    if-ne v5, p2, :cond_b

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq p2, v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, v6}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingTypeSwitchedNotice(Z)V

    :cond_b
    :goto_3
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    if-nez v0, :cond_f

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    invoke-interface {v0, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingNotice(I)V

    goto :goto_4

    :cond_c
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-nez v0, :cond_d

    const/4 v0, -0x1

    if-ne v0, p2, :cond_e

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    :cond_e
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsMotionDetectionSupported:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    if-eqz v0, :cond_f

    if-ne v5, p2, :cond_f

    const-string v0, "PowerUI"

    const-string v3, "Unregister SContextListener - From Check charging type"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v0, v3, v1}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    :cond_f
    :goto_4
    if-ne v5, p2, :cond_11

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-nez v0, :cond_11

    if-ne p3, v5, :cond_10

    if-ne p4, v2, :cond_10

    const/4 v4, 0x1

    goto :goto_5

    :cond_10
    nop

    :goto_5
    move v0, v4

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v1, v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWirelessChargerDisconnectNotice(Z)V

    :cond_11
    return-void
.end method

.method private checkCoolDownStatus(Landroid/content/Intent;)V
    .locals 5

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    const-string v1, "battery_overheat_level"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    const-string v1, "PowerUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Battery overheat Level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-eq v0, v1, :cond_3

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    invoke-interface {v1, v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showOverheatWarning(I)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-le v2, v1, :cond_1

    if-gt v2, v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissWillOverheatShutdownWarning()V

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v1, "PowerUI"

    const-string v2, "Battery overheat level recovered from shutdown"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissOverheatWarning()V

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    invoke-interface {v1, v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showOverheatWarning(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private checkFullBatteryStatus(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v1, 0x5

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showFullBatteryNotice()V

    goto :goto_0

    :cond_0
    if-ne v1, p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissFullBatteryNotice()V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkIncompatibleChargerConnection(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showIncompatibleChargerNotice()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissIncompatibleChargerNotice()V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkPowerSharingCableStatus(Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "power_sharing"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    move v0, v1

    const-string v1, "PowerUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showing power sharing dialog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showPowerSharingCableNotice()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissPowerSharingCableNotice()V

    :goto_0
    return-void
.end method

.method private checkPowerSupplyingStatus(Landroid/content/Intent;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsPowerSupplyingActivated:Z

    const-string/jumbo v1, "sec_plug_type"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsPowerSupplyingActivated:Z

    const-string v1, "PowerUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Power supply - oldPowerSupplyingActivated = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsPowerSupplyingActivated = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mIsPowerSupplyingActivated:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsPowerSupplyingActivated:Z

    if-eq v0, v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsPowerSupplyingActivated:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v3, v2

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/Rune;->hasHmtFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mGearVrDocked:Z

    if-eqz v1, :cond_1

    const-string v1, "PowerUI"

    const-string v2, "USB OTG Power notice popup is ignored."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    invoke-interface {v1, v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showPowerSupplyingInLowBatteryNotice(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissPowerSupplyingInLowBatteryNotice()V

    :cond_3
    :goto_1
    return-void
.end method

.method private checkWaterDetectionStatus(Landroid/content/Intent;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsHiccupState:Z

    const-string v2, "misc_event"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    const-string v2, "misc_event"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v5, 0x20

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_1

    move v3, v4

    nop

    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mIsHiccupState:Z

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mIsHiccupState:Z

    invoke-interface {v2, v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateHiccupState(Z)V

    const-string v2, "PowerUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUPPORT_WATER_PROTECTION_POPUP - oldBatteryWaterConnector : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mBatteryWaterConnector : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", oldHiccupState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsHiccupState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mIsHiccupState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsHiccupState:Z

    if-eq v1, v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsHiccupState:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    invoke-interface {v2, v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWaterProtectionAlertDialog(Z)V

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    if-eq v0, v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    invoke-interface {v2, v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWaterProtectionAlertDialog(Z)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    invoke-interface {v2, v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissWaterProtectionAlertDialog(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private checkWirelessChargingFodStatus(Landroid/content/Intent;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessFodState:Z

    const-string v1, "misc_event"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x100

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mWirelessFodState:Z

    const-string v1, "PowerUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUPPORT_WIRELESS_CHARGER_FOD_POPUP - oldWirelessFodState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mWirelessFodState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mWirelessFodState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessFodState:Z

    if-eq v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessFodState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWirelessFodAlertDialog()V

    :cond_1
    return-void
.end method

.method private findBatteryLevelBucket(I)I
    .locals 3

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-le p1, v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    rsub-int/lit8 v2, v1, -0x1

    return v2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "not possible!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initTemperatureWarning()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "show_temperature_warning"

    const v3, 0x7f0b001a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "warning_temperature"

    const v3, 0x7f0b001f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/HardwarePropertiesManager;->getDeviceTemperatures(II)[F

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    aget v4, v2, v3

    const v5, -0x800001

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    aget v3, v2, v3

    const v4, 0x7f0b0020

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    if-nez v2, :cond_5

    const-string/jumbo v2, "thermalservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    new-instance v4, Lcom/android/systemui/power/PowerUI$ThermalEventListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/power/PowerUI$ThermalEventListener;-><init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$1;)V

    invoke-interface {v3, v4}, Landroid/os/IThermalService;->registerThermalEventListener(Landroid/os/IThermalEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_2
    goto :goto_3

    :cond_4
    const-string v3, "PowerUI"

    const-string v4, "cannot find thermalservice, no throttling push notifications"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->setNextLogTime()V

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mUpdateTempCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->updateTemperatureWarning()V

    return-void
.end method

.method private isEnhancedTrigger(ZJZI)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_7

    if-nez p4, :cond_7

    const/4 v1, 0x1

    if-ne p5, v1, :cond_0

    goto :goto_4

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v3, v3, v1

    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v4}, Lcom/android/systemui/power/EnhancedEstimates;->getLowWarningThreshold()J

    move-result-wide v4

    cmp-long v4, p2, v4

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    if-gt v4, v2, :cond_2

    :cond_1
    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v5}, Lcom/android/systemui/power/EnhancedEstimates;->getSevereWarningThreshold()J

    move-result-wide v5

    cmp-long v5, p2, v5

    if-ltz v5, :cond_3

    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    if-gt v5, v3, :cond_4

    :cond_3
    move v5, v1

    goto :goto_1

    :cond_4
    move v5, v0

    :goto_1
    if-nez v4, :cond_6

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    goto :goto_3

    :cond_6
    :goto_2
    move v0, v1

    :goto_3
    return v0

    :cond_7
    :goto_4
    return v0
.end method

.method public static synthetic lambda$UShUnCLjyLd54pAqMZk3QJ-gMNs(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->initTemperatureWarning()V

    return-void
.end method

.method private logAtTemperatureThreshold(F)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",thresholdTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",batteryStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",recentTemps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "PowerUI"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logTemperatureStats()V
    .locals 8

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mNextLogTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    const/4 v1, 0x0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v0, v0, v1

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v3, v3, v1

    const/4 v4, 0x1

    :goto_0
    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v5, v5, v4

    add-float/2addr v0, v5

    cmpl-float v6, v5, v3

    if-lez v6, :cond_1

    move v3, v5

    :cond_1
    cmpg-float v6, v5, v2

    if-gez v6, :cond_2

    move v2, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    int-to-float v4, v4

    div-float v4, v0, v4

    const-string v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "avg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",min="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",max="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v6, "device_skin_temp_avg"

    float-to-int v7, v4

    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v6, "device_skin_temp_min"

    float-to-int v7, v2

    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v6, "device_skin_temp_max"

    float-to-int v7, v3

    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->setNextLogTime()V

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    return-void
.end method

.method private playChargerConnectionAnimation(ZII)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    if-nez v0, :cond_a

    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne p2, v0, :cond_0

    if-nez p1, :cond_a

    :cond_0
    sget-object v0, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_BATTERY_CHARGER_CONNECTION_VI:Ljava/lang/String;

    const-string v2, "WIRELESS_ONLY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_5

    const/4 v0, 0x4

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v0, v3, :cond_2

    if-eq p2, v1, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v0, v1, :cond_4

    if-ne p2, v3, :cond_4

    :cond_3
    const-string v0, "PowerUI"

    const-string v1, "Only cable charger type changed, so don\'t play charging animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz v0, :cond_a

    const-string v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cable charger connected - mIsUltraFastCharging = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mIsUltraFastCharging:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerUI;->setChargerAnimationView(I)V

    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    goto :goto_1

    :cond_5
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsMotionDetectionSupported:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsScreenOn:Z

    if-nez v0, :cond_6

    const-string v0, "PowerUI"

    const-string v1, "Wireless charger connected but device had no move detection and screen off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v0, v3, :cond_7

    if-eq p2, v1, :cond_8

    :cond_7
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v0, v1, :cond_9

    if-ne p2, v3, :cond_9

    :cond_8
    const-string v0, "PowerUI"

    const-string v1, "Only cable charger type changed, so don\'t play charging animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    const-string v0, "PowerUI"

    const-string v1, "Wireless or Non centered Wired charger connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerUI;->setChargerAnimationView(I)V

    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    :cond_a
    :goto_1
    return-void
.end method

.method private playChargerConnectionSound(ZII)V
    .locals 6

    const-string v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "priorPlugType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mPlugType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " priorBatteryStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mBatteryStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq p2, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    if-eqz v0, :cond_a

    if-nez p1, :cond_a

    :cond_2
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_a

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "charging_sounds_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_a

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsMotionDetectionSupported:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v2, v4, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsScreenOn:Z

    if-nez v2, :cond_3

    if-eqz p2, :cond_5

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :cond_5
    :goto_0
    if-eqz v0, :cond_8

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v2, v3, :cond_6

    if-eq p2, v1, :cond_7

    :cond_6
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v2, v1, :cond_8

    if-ne p2, v3, :cond_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    if-eqz v0, :cond_a

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningStopPowerSoundTask:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mStopPowerSoundTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningStopPowerSoundTask:Z

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v1, v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->playPowerSound(I)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mStopPowerSoundTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningStopPowerSoundTask:Z

    :cond_a
    return-void
.end method

.method private sendLowBatteryDumpIfNeeded(III)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LOW_BATTERY_DUMP"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_3

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    sub-int v0, p1, v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    sub-int/2addr v0, p1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    if-ne v0, p1, :cond_2

    :cond_1
    if-ge p3, p2, :cond_3

    const/4 v0, -0x2

    if-ne v0, p3, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z

    if-eqz v0, :cond_3

    const-string v0, "PowerUI"

    const-string v1, "Low battery dump"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.systemui.power.action.LOW_BATTERY_DUMP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method private setChargerAnimationView(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x7e5

    const v5, 0x1000118

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_AOD_PACKAGE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0033

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/ChargerAnimationView;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->setChargerAnimationViewVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/power/ChargerAnimationView;->setChargingAnimationListner(Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/power/ChargerAnimationView;->setBackGroundAnimation(I)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->setWindowDisplay(Landroid/view/Display;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsScreenOn:Z

    iget-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mIsUltraFastCharging:Z

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/systemui/power/ChargerAnimationView;->startChargerAnimation(IIZZ)V

    return-void
.end method

.method private setNextLogTime()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mNextLogTime:J

    return-void
.end method

.method private showThermalShutdownDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getLastShutdownReason()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showThermalShutdownWarning()V

    :cond_0
    return-void
.end method

.method private updateBatteryNotificationLanguage()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->reCreatePowerUINotificationChannel()V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isLowBatteryWarningShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateLowBatteryWarning()V

    const-string v0, "PowerUI"

    const-string v1, "Language is changed so notify LowBatteryNotification again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    const-string v0, "PowerUI"

    const-string v1, "Language is changed so notify ChargingNotification again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    invoke-interface {v0, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingNotice(I)V

    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_FULL_BATTERY_CHECK:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissFullBatteryNotice()V

    const-string v0, "PowerUI"

    const-string v1, "Language is changed so notify FullBatteryNotification again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showFullBatteryNotice()V

    :cond_2
    sget-boolean v0, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissIncompatibleChargerNotice()V

    const-string v0, "PowerUI"

    const-string v1, "Language is changed so notify incompatible charger again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showIncompatibleChargerNotice()V

    :cond_3
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mScreenOffTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const-string v0, " ("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " ago)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "soundTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_battery_sound_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mThresholdTemp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mNextLogTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mNextLogTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, p2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method protected maybeShowBatteryWarning(ZZIII)V
    .locals 18

    move-object/from16 v9, p0

    move/from16 v10, p3

    move/from16 v11, p4

    iget-object v0, v9, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v11, v10, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v13

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v14

    :goto_1
    move v8, v0

    iget-object v0, v9, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v0}, Lcom/android/systemui/power/EnhancedEstimates;->isHybridNotificationEnabled()Z

    move-result v15

    if-eqz v15, :cond_2

    iget-object v0, v9, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v0}, Lcom/android/systemui/power/EnhancedEstimates;->getEstimate()Lcom/android/systemui/power/Estimate;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-wide v1, v0, Lcom/android/systemui/power/Estimate;->estimateMillis:J

    iput-wide v1, v9, Lcom/android/systemui/power/PowerUI;->mTimeRemaining:J

    iget-object v1, v9, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v1, v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateEstimate(Lcom/android/systemui/power/Estimate;)V

    iget-object v1, v9, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget-object v2, v9, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v2}, Lcom/android/systemui/power/EnhancedEstimates;->getLowWarningThreshold()J

    move-result-wide v2

    iget-object v4, v9, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v4}, Lcom/android/systemui/power/EnhancedEstimates;->getSevereWarningThreshold()J

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateThresholds(JJ)V

    iget v1, v9, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/16 v2, 0x2d

    if-lt v1, v2, :cond_2

    iget-wide v1, v9, Lcom/android/systemui/power/PowerUI;->mTimeRemaining:J

    sget-wide v3, Lcom/android/systemui/power/PowerUI;->SIX_HOURS_MILLIS:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iput-boolean v13, v9, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    iput-boolean v13, v9, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    :cond_2
    iget-wide v5, v9, Lcom/android/systemui/power/PowerUI;->mTimeRemaining:J

    iget v7, v9, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move-object v0, v9

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v10

    move v4, v11

    move/from16 v16, v7

    move v7, v12

    move v13, v8

    move/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/power/PowerUI;->shouldShowLowBatteryWarning(ZZIIJZI)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eq v11, v10, :cond_3

    iget-object v0, v9, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isLowBatteryWarningShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v9, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    iput-boolean v14, v9, Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z

    iget-object v0, v9, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, v9, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_3
    iget-object v0, v9, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, v13}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showLowBatteryWarning(Z)V

    :goto_2
    if-eqz v15, :cond_9

    iget-wide v0, v9, Lcom/android/systemui/power/PowerUI;->mTimeRemaining:J

    iget-object v2, v9, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v2}, Lcom/android/systemui/power/EnhancedEstimates;->getSevereWarningThreshold()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    iget v0, v9, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iget-object v1, v9, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v1, v1, v14

    if-ge v0, v1, :cond_4

    goto :goto_3

    :cond_4
    iput-boolean v14, v9, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    goto :goto_4

    :cond_5
    :goto_3
    iput-boolean v14, v9, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    goto :goto_4

    :cond_6
    iget-wide v4, v9, Lcom/android/systemui/power/PowerUI;->mTimeRemaining:J

    move-object v0, v9

    move/from16 v1, p1

    move v2, v10

    move v3, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/power/PowerUI;->shouldDismissLowBatteryWarning(ZIIJZ)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, v9, Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z

    if-eqz v0, :cond_7

    iget-object v0, v9, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, v9, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z

    :cond_7
    iget-object v0, v9, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    goto :goto_4

    :cond_8
    iget-object v0, v9, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isLowBatteryWarningShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, v9, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v1, p5

    if-eq v1, v0, :cond_a

    iget-object v0, v9, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateLowBatteryWarning()V

    goto :goto_5

    :cond_9
    :goto_4
    move/from16 v1, p5

    :cond_a
    :goto_5
    return-void
.end method

.method public onChargerAnimationEnd()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingMode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    invoke-interface {v0, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingNotice(I)V

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/power/-$$Lambda$PowerUI$UShUnCLjyLd54pAqMZk3QJ-gMNs;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/-$$Lambda$PowerUI$UShUnCLjyLd54pAqMZk3QJ-gMNs;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mDensity:I

    if-ne v2, v3, :cond_1

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mFontScale:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->onDensityOrFontScaleChanged()V

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mDensity:I

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mFontScale:F

    :cond_2
    sget-object v3, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_BATTERY_CHARGER_CONNECTION_VI:Ljava/lang/String;

    const-string v4, "NONE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mDisplay:Landroid/view/Display;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mCurrentOrientation:I

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mCurrentOrientation:I

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mCurrentOrientation:I

    if-eq v4, v3, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-virtual {v4}, Lcom/android/systemui/power/ChargerAnimationView;->stopChargerAnimation()V

    :cond_3
    const-class v3, Lcom/android/systemui/SystemUITipPopUp;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/SystemUITipPopUp;

    invoke-virtual {v3}, Lcom/android/systemui/SystemUITipPopUp;->updateTipPopUp()V

    return-void
.end method

.method shouldDismissLowBatteryWarning(ZIIJZ)Z
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v0}, Lcom/android/systemui/power/EnhancedEstimates;->isHybridNotificationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v0}, Lcom/android/systemui/power/EnhancedEstimates;->getLowWarningThreshold()J

    move-result-wide v3

    cmp-long v0, p4, v3

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-le p3, p2, :cond_1

    if-lez p3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-nez p1, :cond_3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v4}, Lcom/android/systemui/power/EnhancedEstimates;->isHybridNotificationEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    move v1, v2

    :goto_3
    return v1
.end method

.method shouldShowLowBatteryWarning(ZZIIJZI)Z
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v0}, Lcom/android/systemui/power/EnhancedEstimates;->isHybridNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move v1, p1

    move-wide v2, p5

    move v4, p7

    move v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/power/PowerUI;->isEnhancedTrigger(ZJZI)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    if-lt p4, p3, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    if-gez p4, :cond_2

    if-eq p8, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public start()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v1, "hardware_properties"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HardwarePropertiesManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-class v0, Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/PowerUI$WarningsUI;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    const-class v0, Lcom/android/systemui/power/EnhancedEstimates;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/EnhancedEstimates;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "low_power_trigger_level"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->updateBatteryWarningLevels()V

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-virtual {v2}, Lcom/android/systemui/power/PowerUI$Receiver;->init()V

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showThermalShutdownDialog()V

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->initTemperatureWarning()V

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v3, v2, Landroid/content/res/Configuration;->fontScale:F

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mFontScale:F

    iget v3, v2, Landroid/content/res/Configuration;->densityDpi:I

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mDensity:I

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const-string v5, "PowerUI"

    const-string/jumbo v6, "start : fail to get PowerManager reference"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v5, "PowerUI"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/systemui/power/PowerUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.sensorhub"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "PowerUI"

    const-string/jumbo v6, "start : hasSystemFeature(com.sec.feature.sensorhub)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mIsMotionDetectionSupported:Z

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "scontext"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/scontext/SContextManager;

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    const-string v4, "PowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start : (mSContextManager != null - mIsSContextEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/Rune;->hasHmtFeature(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "vr"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/vr/IGearVrManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/vr/IGearVrManagerService;

    move-result-object v4

    if-eqz v4, :cond_3

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

    invoke-interface {v4, v5}, Lcom/samsung/android/vr/IGearVrManagerService;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    const-string v6, "PowerUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to register GearVR state listener: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    :goto_2
    nop

    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method updateBatteryWarningLevels()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v3, 0x0

    aput v1, v2, v3

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v4, 0x1

    aput v0, v2, v4

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    return-void
.end method

.method protected updateTemperatureWarning()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/os/HardwarePropertiesManager;->getDeviceTemperatures(II)[F

    move-result-object v0

    array-length v2, v0

    if-eqz v2, :cond_1

    aget v1, v0, v1

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    aput v1, v2, v3

    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v2}, Lcom/android/systemui/power/PowerUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceInVrMode()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerUI;->logAtTemperatureThreshold(F)V

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showHighTemperatureWarning()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissHighTemperatureWarning()V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->logTemperatureStats()V

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mUpdateTempCallback:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
