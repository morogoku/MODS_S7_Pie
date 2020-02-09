.class public Lcom/android/systemui/statusbar/KeyguardIndicationController;
.super Ljava/lang/Object;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;
    }
.end annotation


# instance fields
.field private mAffordancePivotY:I

.field private final mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryIsLow:Z

.field private mBatteryLevel:I

.field private mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

.field private mBounceAnimList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBounceInterpolator:Landroid/view/animation/BounceInterpolator;

.field private mChargingSpeed:I

.field private mChargingType:I

.field private mChargingWattage:I

.field private final mContext:Landroid/content/Context;

.field private mCountdownIndication:Ljava/lang/String;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private mDozing:Z

.field private mErrorColor:I

.field private final mFastThreshold:I

.field private final mHandler:Landroid/os/Handler;

.field private mIndicationArea:Landroid/view/ViewGroup;

.field private mInitialTextColor:I

.field private mIsChargeEnabled:Z

.field private mIsEmergencyMode:Z

.field private mIsPowerSavingMode:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

.field private mMessageToShowOnScreenOn:Ljava/lang/String;

.field private mOriginalLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

.field private mOriginalLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

.field private mPowerCharged:Z

.field private mPowerPluggedIn:Z

.field private mPowerPluggedInWired:Z

.field private mRestingIndication:Ljava/lang/String;

.field private mScreenOn:Z

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field private mSineOut33:Landroid/view/animation/PathInterpolator;

.field private final mSlowThreshold:I

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mSwellingMode:I

.field private mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private final mTickReceiver:Landroid/content/BroadcastReceiver;

.field private mTransientIndication:Ljava/lang/CharSequence;

.field private mTransientTextColor:I

.field private mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVisible:Z

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSwellingMode:I

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e2e147b    # 0.17f

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSineOut33:Landroid/view/animation/PathInterpolator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/net/Uri;

    const-string/jumbo v2, "powersaving_switch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v0

    const-string/jumbo v2, "psm_switch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "low_power"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSettingsValueList:[Landroid/net/Uri;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTickReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSlowThreshold:I

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFastThreshold:I

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUserManager:Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 1

    const-string v0, "Doze:KeyguardIndication"

    invoke-static {p1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;Lcom/android/systemui/util/wakelock/WakeLock;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mOriginalLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->registerCallbacks(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAffordancePivotY:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mScreenOn:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mOriginalLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;Lcom/android/systemui/util/wakelock/WakeLock;)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSwellingMode:I

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e2e147b    # 0.17f

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSineOut33:Landroid/view/animation/PathInterpolator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/net/Uri;

    const-string/jumbo v2, "powersaving_switch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v0

    const-string/jumbo v0, "psm_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "low_power"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSettingsValueList:[Landroid/net/Uri;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTickReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    const v0, 0x7f0a027c

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getCurrentTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColor:I

    const v0, 0x7f0a027b

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    new-instance v0, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-direct {v0, p4}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSlowThreshold:I

    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFastThreshold:I

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUserManager:Landroid/os/UserManager;

    const-string v1, "batterystats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceInterpolator:Landroid/view/animation/BounceInterpolator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isPowerSavingMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsPowerSavingMode:Z

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsEmergencyMode:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602cd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mErrorColor:I

    const-string v1, "device_policy"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsPowerSavingMode:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsEmergencyMode:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingWattage:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSlowThreshold:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFastThreshold:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryIsLow:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsChargeEnabled:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSwellingMode:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mErrorColor:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isShowingDelayedHelpText()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateLockIconText()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isRunningBiometricCountdownState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownIndication:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownIndication:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3384(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownIndication:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownIndication:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/view/animation/BounceInterpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceInterpolator:Landroid/view/animation/BounceInterpolator;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/LockIcon;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isRunningCountdownState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isShowEmptyMessage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/CharSequence;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->switchIndication(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRestingIndication:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRestingIndication:Ljava/lang/String;

    return-object p1
.end method

.method private computeIndication()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    const-class v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenHelpTextEnabled()Z

    move-result v0

    const-class v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenBatteryInfoEnabled()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isShowEmptyMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    return-object v2

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isRunningCountdownState()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->handleAttemptLockout(J)V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownIndication:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v2, ""

    :goto_0
    return-object v2

    :cond_3
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isRunningBiometricCountdownState(Z)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutBiometricAttemptDeadline(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->handleBiometricsAttemptLockout(J)V

    :cond_4
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownIndication:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v2, ""

    :goto_1
    return-object v2

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    const-string v2, ""

    :goto_2
    return-object v2

    :cond_8
    const-wide/16 v2, 0x1388

    if-eqz v1, :cond_9

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsChargeEnabled:Z

    if-eqz v4, :cond_9

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showGuideTextDelayed(J)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getChargingText()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_9
    if-eqz v1, :cond_a

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryIsLow:Z

    if-eqz v4, :cond_a

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showGuideTextDelayed(J)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1206f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceRecognitionFirstScreen()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, ""

    return-object v2

    :cond_b
    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRestingIndication:Ljava/lang/String;

    goto :goto_3

    :cond_c
    const-string v2, ""

    :goto_3
    return-object v2
.end method

.method private computePowerIndication()Ljava/lang/String;
    .locals 10

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1204ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    move-wide v2, v0

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    move-result-wide v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v4

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "KeyguardIndication"

    const-string v6, "Error calling IBatteryStats: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    cmp-long v0, v2, v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    const/4 v6, 0x2

    if-eqz v5, :cond_5

    if-eq v5, v6, :cond_3

    if-eqz v0, :cond_2

    const v5, 0x7f1204fc

    goto :goto_4

    :cond_2
    const v5, 0x7f120514

    goto :goto_4

    :cond_3
    if-eqz v0, :cond_4

    const v5, 0x7f1204fd

    goto :goto_2

    :cond_4
    const v5, 0x7f120515

    :goto_2
    goto :goto_4

    :cond_5
    if-eqz v0, :cond_6

    const v5, 0x7f1204fe

    goto :goto_3

    :cond_6
    const v5, 0x7f120516

    :goto_3
    nop

    :goto_4
    nop

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    int-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_7

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v8, v2, v3}, Landroid/text/format/Formatter;->formatShortElapsedTimeRoundingUpToMinutes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    :try_start_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v8, v6, v1

    aput-object v7, v6, v4

    invoke-virtual {v9, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/util/IllegalFormatConversionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v6

    :catch_1
    move-exception v6

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v8, v4, v1

    invoke-virtual {v9, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_7
    :try_start_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v1

    invoke-virtual {v6, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/util/IllegalFormatConversionException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v1

    :catch_2
    move-exception v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getChargingText()Ljava/lang/String;
    .locals 9

    const-string v0, ""

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1206fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_IS_CHN_DEVICE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v4, 0x7f1206fb

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v4, 0x7f1206fa

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v4, 0x7f1206f6

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_2
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_IS_CHN_DEVICE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v4, 0x7f1206f9

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v4, 0x7f1206f8

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v0, v1

    goto :goto_2

    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v4, 0x7f1206f4

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    sget-boolean v1, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_BATTERY_CHARGING_ESTIMATE_TIME:Z

    if-eqz v1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSwellingMode:I

    if-nez v1, :cond_3

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getFormattedTime(J)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v8, 0x7f1206f5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_3
    goto :goto_3

    :catch_0
    move-exception v1

    const-string v2, "KeyguardIndication"

    const-string v3, "Error calling IBatteryStats: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDefaultInstruction(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricsAuthenticated(I)I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const v1, 0x7f1206ee

    return v1

    :cond_0
    if-eqz v0, :cond_1

    const v1, 0x7f1206ed

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f120746

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/Rune;->isFingerprintSensorInDisplay(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    return v1

    :cond_4
    :goto_0
    const v1, 0x7f120745

    return v1
.end method

.method private getFormattedTime(J)Ljava/lang/String;
    .locals 11

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0xe10

    cmp-long v7, v0, v5

    if-ltz v7, :cond_0

    div-long v5, v0, v5

    long-to-int v2, v5

    mul-int/lit16 v5, v2, 0xe10

    int-to-long v5, v5

    sub-long/2addr v0, v5

    :cond_0
    const-wide/16 v5, 0x3c

    cmp-long v7, v0, v5

    if-ltz v7, :cond_1

    div-long v5, v0, v5

    long-to-int v3, v5

    mul-int/lit8 v5, v3, 0x3c

    int-to-long v5, v5

    sub-long/2addr v0, v5

    :cond_1
    long-to-int v4, v0

    const/4 v5, 0x2

    if-nez v2, :cond_2

    if-lt v3, v5, :cond_2

    const/16 v6, 0x1e

    if-lt v4, v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v2, :cond_3

    if-lez v3, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v9, 0x7f1206fe

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v8, v9, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    goto/16 :goto_1

    :cond_3
    if-lez v2, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v8, 0x7f1206fd

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v6

    invoke-virtual {v5, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_4
    if-lez v3, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v8, "el"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const v8, 0x7f1206ff

    if-eqz v5, :cond_6

    if-ne v3, v7, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v6

    invoke-virtual {v5, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v8, 0x7f120316

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v6

    invoke-virtual {v5, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v6

    invoke-virtual {v5, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_7
    if-le v4, v7, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v8, 0x7f120318

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v6

    invoke-virtual {v5, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v8, 0x7f120317

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v6

    invoke-virtual {v5, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    return-object v5
.end method

.method private handleAttemptLockout(J)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPerformingWipeOut()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->switchIndication(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_1
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;

    sub-long v5, p1, v0

    const-wide/16 v7, 0x3e8

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;JJ)V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private handleBiometricsAttemptLockout(J)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPerformingWipeOut()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->switchIndication(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    :cond_1
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;

    sub-long v5, p1, v0

    const-wide/16 v7, 0x3e8

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;JJ)V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private isLockIconVisible()Z
    .locals 15

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v2

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v2, :cond_0

    and-int/lit16 v9, v1, 0x100

    const/16 v10, 0x100

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustAgentDisabled(I)Z

    move-result v9

    if-nez v9, :cond_0

    move v9, v7

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    if-nez v2, :cond_1

    and-int/lit8 v10, v1, 0x10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v7

    goto :goto_1

    :cond_1
    move v10, v8

    :goto_1
    if-nez v2, :cond_2

    and-int/lit16 v11, v1, 0x1000

    const/16 v12, 0x1000

    if-ne v11, v12, :cond_2

    iget-object v11, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v11

    if-eqz v11, :cond_2

    move v11, v7

    goto :goto_2

    :cond_2
    move v11, v8

    :goto_2
    iget-object v12, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/systemui/Rune;->isFingerprintSensorInDisplay(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v12

    if-eqz v12, :cond_3

    move v12, v7

    goto :goto_3

    :cond_3
    move v12, v8

    :goto_3
    sget-boolean v13, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v13, :cond_4

    iget-object v13, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v13

    if-eqz v13, :cond_4

    return v8

    :cond_4
    iget-object v13, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/systemui/Rune;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_5

    return v8

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isRunningCountdownState()Z

    move-result v13

    if-eqz v13, :cond_6

    return v7

    :cond_6
    if-eqz v12, :cond_7

    return v8

    :cond_7
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v13

    if-eqz v13, :cond_8

    if-eqz v10, :cond_8

    return v8

    :cond_8
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v13

    if-eqz v13, :cond_9

    if-eqz v11, :cond_9

    return v8

    :cond_9
    if-eqz v6, :cond_a

    if-nez v5, :cond_a

    const-wide/16 v13, 0x0

    cmp-long v13, v3, v13

    if-nez v13, :cond_a

    return v7

    :cond_a
    return v8
.end method

.method private isRunningBiometricCountdownState()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isRunningBiometricCountdownState(Z)Z

    move-result v0

    return v0
.end method

.method private isRunningBiometricCountdownState(Z)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutBiometricAttemptDeadline(I)J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_3

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    const-string v4, "fingerprint"

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ib"

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "iris"

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "face"

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return v3

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    :cond_2
    return v2

    :cond_3
    cmp-long v4, v0, v4

    if-eqz v4, :cond_4

    move v2, v3

    nop

    :cond_4
    return v2
.end method

.method private isRunningCountdownState()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isShowEmptyMessage()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isShowingDelayedHelpText()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsPowerSavingMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsEmergencyMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private registerCallbacks(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/util/LogUtil;->isDebugLevelMid()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "KeyguardIndication"

    invoke-static {v1}, Lcom/android/systemui/SystemUiIntent;->getUserTaggedAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTickReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v6, 0x0

    sget-object v1, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/os/Handler;

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private showGuideTextDelayed(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private switchIndication(Ljava/lang/CharSequence;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateLockIconVisibility(ZZ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isLockIconVisible()Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateLockIconVisibility(ZZ)V

    :goto_0
    const-string v0, "KeyguardIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchIndication : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private updateDisclosure()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120305

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const v3, 0x7f120304

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07023f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextSize(IF)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDisclosure:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updateLockIconText()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    return-void
.end method

.method private updateLockIconVisibility(ZZ)V
    .locals 3

    const-string v0, "KeyguardIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLockIconVisibility visible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isShowAnimation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->showIcon(ZZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "KeyguardIndicationController:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTransientTextColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInitialTextColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerPluggedInWired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerPluggedIn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerCharged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mChargingSpeed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mChargingWattage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingWattage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMessageToShowOnScreenOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBatteryLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTextView.getText(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  computePowerIndication(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getHelpText(I)Ljava/lang/String;
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v4

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-boolean v10, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/android/systemui/Rune;->isFingerprintSensorRear()Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v5, 0x1

    :cond_0
    const/4 v10, 0x1

    if-nez v6, :cond_1

    and-int/lit8 v12, v4, 0x1

    if-ne v12, v10, :cond_1

    iget-object v12, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v12

    if-eqz v12, :cond_1

    if-nez v5, :cond_1

    move v12, v10

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    :goto_0
    if-nez v6, :cond_2

    and-int/lit8 v13, v4, 0x10

    const/16 v14, 0x10

    if-ne v13, v14, :cond_2

    iget-object v13, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v13

    if-eqz v13, :cond_2

    move v13, v10

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    :goto_1
    if-nez v6, :cond_3

    and-int/lit16 v14, v4, 0x100

    const/16 v15, 0x100

    if-ne v14, v15, :cond_3

    iget-object v14, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v14}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v14, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v14}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result v14

    if-nez v14, :cond_3

    iget-object v14, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v14, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v14

    if-nez v14, :cond_3

    iget-object v14, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v14, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustAgentDisabled(I)Z

    move-result v14

    if-nez v14, :cond_3

    move v14, v10

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    :goto_2
    if-nez v6, :cond_4

    and-int/lit16 v15, v4, 0x1000

    const/16 v10, 0x1000

    if-ne v15, v10, :cond_4

    iget-object v10, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v15

    if-eqz v15, :cond_6

    if-eqz v13, :cond_5

    iget-object v15, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v15}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    move v13, v15

    move v7, v13

    :cond_6
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceRecognitionFirstScreen()Z

    move-result v15

    if-eqz v15, :cond_8

    if-eqz v14, :cond_7

    iget-object v15, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v15}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v15, 0x1

    goto :goto_5

    :cond_7
    const/4 v15, 0x0

    :goto_5
    move v14, v15

    move v8, v14

    :cond_8
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v15

    if-eqz v15, :cond_a

    if-eqz v10, :cond_9

    iget-object v15, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v15}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v15

    if-eqz v15, :cond_9

    const/16 v16, 0x1

    goto :goto_6

    :cond_9
    const/16 v16, 0x0

    :goto_6
    move/from16 v10, v16

    move v9, v10

    :cond_a
    iget-object v15, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v15, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v15

    iget-object v11, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    move/from16 v17, v2

    const-string v2, "accessibility"

    invoke-virtual {v11, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v11

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/Rune;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v2

    move/from16 v19, v5

    iget-object v5, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/Rune;->isFingerprintSensorInDisplay(Landroid/content/Context;)Z

    move-result v5

    const v16, 0x7f120815

    const v20, 0x7f120742

    const v21, 0x7f120814

    const v22, 0x7f12028b

    move/from16 v23, v6

    const/4 v6, 0x2

    if-nez v12, :cond_c

    if-nez v13, :cond_c

    if-nez v14, :cond_c

    if-eqz v10, :cond_b

    goto :goto_7

    :cond_b
    move/from16 v26, v7

    goto/16 :goto_25

    :cond_c
    :goto_7
    if-nez v15, :cond_66

    const v24, 0x7f120590

    const v25, 0x7f12058e

    if-eqz v12, :cond_d

    if-nez v13, :cond_f

    :cond_d
    if-eqz v12, :cond_e

    if-nez v14, :cond_f

    :cond_e
    if-eqz v12, :cond_32

    if-eqz v10, :cond_32

    :cond_f
    if-eqz v12, :cond_17

    if-eqz v13, :cond_17

    if-nez v7, :cond_17

    if-ne v1, v6, :cond_13

    if-eqz v2, :cond_11

    if-eqz v11, :cond_10

    const v24, 0x7f120296

    goto :goto_8

    :cond_10
    const v24, 0x7f120295

    :goto_8
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_11
    if-eqz v11, :cond_12

    const v25, 0x7f1205e3

    nop

    :cond_12
    move/from16 v17, v25

    goto/16 :goto_23

    :cond_13
    if-eqz v2, :cond_15

    if-eqz v11, :cond_14

    const v24, 0x7f1202b0

    goto :goto_9

    :cond_14
    const v24, 0x7f1202af

    :goto_9
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_15
    if-eqz v5, :cond_16

    const/16 v24, 0x0

    nop

    :cond_16
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_17
    if-eqz v12, :cond_1f

    if-eqz v14, :cond_1f

    if-nez v8, :cond_1f

    if-ne v1, v6, :cond_1b

    if-eqz v2, :cond_19

    if-eqz v11, :cond_18

    const v24, 0x7f120292

    goto :goto_a

    :cond_18
    const v24, 0x7f120291

    :goto_a
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_19
    if-eqz v11, :cond_1a

    const v25, 0x7f12055f

    nop

    :cond_1a
    move/from16 v17, v25

    goto/16 :goto_23

    :cond_1b
    if-eqz v2, :cond_1d

    if-eqz v11, :cond_1c

    const v24, 0x7f1202ac

    goto :goto_b

    :cond_1c
    const v24, 0x7f1202ab

    :goto_b
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_1d
    if-eqz v5, :cond_1e

    const/16 v24, 0x0

    nop

    :cond_1e
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_1f
    if-eqz v12, :cond_27

    if-eqz v10, :cond_27

    if-nez v9, :cond_27

    if-ne v1, v6, :cond_23

    if-eqz v2, :cond_21

    if-eqz v11, :cond_20

    const v24, 0x7f120294

    goto :goto_c

    :cond_20
    const v24, 0x7f120293

    :goto_c
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_21
    if-eqz v11, :cond_22

    const v25, 0x7f1205be

    nop

    :cond_22
    move/from16 v17, v25

    goto/16 :goto_23

    :cond_23
    if-eqz v2, :cond_25

    if-eqz v11, :cond_24

    const v24, 0x7f1202ae

    goto :goto_d

    :cond_24
    const v24, 0x7f1202ad

    :goto_d
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_25
    if-eqz v5, :cond_26

    const/16 v24, 0x0

    nop

    :cond_26
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_27
    if-eqz v12, :cond_28

    if-nez v8, :cond_2a

    :cond_28
    if-eqz v12, :cond_29

    if-nez v7, :cond_2a

    :cond_29
    if-eqz v12, :cond_64

    if-eqz v9, :cond_64

    :cond_2a
    if-ne v1, v6, :cond_2e

    if-eqz v2, :cond_2c

    if-eqz v11, :cond_2b

    const v24, 0x7f12028d

    goto :goto_e

    :cond_2b
    const v24, 0x7f12028c

    :goto_e
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_2c
    if-eqz v11, :cond_2d

    const v24, 0x7f120533

    goto :goto_f

    :cond_2d
    const v24, 0x7f120532

    :goto_f
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_2e
    if-eqz v2, :cond_30

    if-eqz v11, :cond_2f

    const v24, 0x7f1202a7

    goto :goto_10

    :cond_2f
    const v24, 0x7f1202a6

    :goto_10
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_30
    if-eqz v11, :cond_31

    const v24, 0x7f120535

    goto :goto_11

    :cond_31
    const v24, 0x7f120534

    :goto_11
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_32
    if-eqz v12, :cond_3a

    if-ne v1, v6, :cond_36

    if-eqz v2, :cond_34

    if-eqz v11, :cond_33

    const v24, 0x7f120297

    goto :goto_12

    :cond_33
    const v24, 0x7f120290

    :goto_12
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_34
    if-eqz v11, :cond_35

    const v25, 0x7f12058f

    nop

    :cond_35
    move/from16 v17, v25

    goto/16 :goto_23

    :cond_36
    if-eqz v2, :cond_38

    if-eqz v11, :cond_37

    const v24, 0x7f1202b1

    goto :goto_13

    :cond_37
    const v24, 0x7f1202aa

    :goto_13
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_38
    if-eqz v5, :cond_39

    const/16 v24, 0x0

    nop

    :cond_39
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_3a
    const v24, 0x7f120745

    const v25, 0x7f12029c

    if-eqz v13, :cond_48

    if-ne v1, v6, :cond_41

    if-eqz v7, :cond_3d

    if-eqz v2, :cond_3c

    if-eqz v11, :cond_3b

    const v24, 0x7f12029b

    goto :goto_14

    :cond_3b
    const v24, 0x7f12029a

    :goto_14
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_3c
    const v17, 0x7f1205d3

    goto/16 :goto_23

    :cond_3d
    if-eqz v2, :cond_3f

    if-eqz v11, :cond_3e

    goto :goto_15

    :cond_3e
    move/from16 v25, v22

    :goto_15
    move/from16 v17, v25

    goto/16 :goto_23

    :cond_3f
    if-eqz v11, :cond_40

    nop

    move/from16 v24, v21

    goto :goto_16

    :cond_40
    move/from16 v24, v20

    :goto_16
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_41
    if-eqz v7, :cond_44

    if-eqz v2, :cond_43

    if-eqz v11, :cond_42

    const v24, 0x7f1202b5

    goto :goto_17

    :cond_42
    const v24, 0x7f1202b4

    :goto_17
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_43
    const v17, 0x7f1205d5

    goto/16 :goto_23

    :cond_44
    if-eqz v2, :cond_46

    if-eqz v11, :cond_45

    const v24, 0x7f1202a5

    goto :goto_18

    :cond_45
    const v24, 0x7f1202a4

    :goto_18
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_46
    if-eqz v11, :cond_47

    nop

    move/from16 v24, v16

    nop

    :cond_47
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_48
    if-eqz v14, :cond_56

    if-ne v1, v6, :cond_4f

    if-eqz v8, :cond_4b

    if-eqz v2, :cond_4a

    if-eqz v11, :cond_49

    const v24, 0x7f12028f

    goto :goto_19

    :cond_49
    const v24, 0x7f12028e

    :goto_19
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_4a
    const v17, 0x7f12054f

    goto/16 :goto_23

    :cond_4b
    if-eqz v2, :cond_4d

    if-eqz v11, :cond_4c

    goto :goto_1a

    :cond_4c
    move/from16 v25, v22

    :goto_1a
    move/from16 v17, v25

    goto/16 :goto_23

    :cond_4d
    if-eqz v11, :cond_4e

    nop

    move/from16 v24, v21

    goto :goto_1b

    :cond_4e
    move/from16 v24, v20

    :goto_1b
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_4f
    if-eqz v8, :cond_52

    if-eqz v2, :cond_51

    if-eqz v11, :cond_50

    const v24, 0x7f1202a9

    goto :goto_1c

    :cond_50
    const v24, 0x7f1202a8

    :goto_1c
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_51
    const v17, 0x7f120550

    goto/16 :goto_23

    :cond_52
    if-eqz v2, :cond_54

    if-eqz v11, :cond_53

    const v24, 0x7f1202a1

    goto :goto_1d

    :cond_53
    const v24, 0x7f1202a0

    :goto_1d
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_54
    if-eqz v11, :cond_55

    nop

    move/from16 v24, v16

    nop

    :cond_55
    move/from16 v17, v24

    goto/16 :goto_23

    :cond_56
    if-eqz v10, :cond_64

    if-ne v1, v6, :cond_5d

    if-eqz v9, :cond_59

    if-eqz v2, :cond_58

    if-eqz v11, :cond_57

    const v24, 0x7f120299

    goto :goto_1e

    :cond_57
    const v24, 0x7f120298

    :goto_1e
    move/from16 v17, v24

    goto :goto_23

    :cond_58
    const v17, 0x7f1205b9

    goto :goto_23

    :cond_59
    if-eqz v2, :cond_5b

    if-eqz v11, :cond_5a

    goto :goto_1f

    :cond_5a
    move/from16 v25, v22

    :goto_1f
    move/from16 v17, v25

    goto :goto_23

    :cond_5b
    if-eqz v11, :cond_5c

    nop

    move/from16 v24, v21

    goto :goto_20

    :cond_5c
    move/from16 v24, v20

    :goto_20
    move/from16 v17, v24

    goto :goto_23

    :cond_5d
    if-eqz v9, :cond_60

    if-eqz v2, :cond_5f

    if-eqz v11, :cond_5e

    const v24, 0x7f1202b3

    goto :goto_21

    :cond_5e
    const v24, 0x7f1202b2

    :goto_21
    move/from16 v17, v24

    goto :goto_23

    :cond_5f
    const v17, 0x7f1205ba

    goto :goto_23

    :cond_60
    if-eqz v2, :cond_62

    if-eqz v11, :cond_61

    const v24, 0x7f1202a3

    goto :goto_22

    :cond_61
    const v24, 0x7f1202a2

    :goto_22
    move/from16 v17, v24

    goto :goto_23

    :cond_62
    if-eqz v11, :cond_63

    nop

    move/from16 v24, v16

    nop

    :cond_63
    move/from16 v17, v24

    :cond_64
    :goto_23
    move/from16 v6, v17

    if-eqz v6, :cond_65

    move/from16 v26, v7

    iget-object v7, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_65
    move/from16 v26, v7

    move/from16 v17, v6

    :goto_24
    goto :goto_25

    :cond_66
    move/from16 v26, v7

    goto :goto_24

    :goto_25
    if-eqz v11, :cond_6c

    const v6, 0x7f1202b7

    const/4 v7, 0x2

    if-ne v1, v7, :cond_68

    if-eqz v2, :cond_67

    goto :goto_26

    :cond_67
    move/from16 v6, v21

    :goto_26
    goto :goto_2a

    :cond_68
    iget-object v7, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v7

    if-nez v7, :cond_6a

    if-eqz v4, :cond_6a

    if-eqz v2, :cond_69

    goto :goto_27

    :cond_69
    const v6, 0x7f120816

    :goto_27
    goto :goto_26

    :cond_6a
    if-eqz v2, :cond_6b

    move/from16 v16, v6

    nop

    :cond_6b
    move/from16 v6, v16

    goto :goto_26

    :cond_6c
    const/4 v6, 0x2

    if-ne v1, v6, :cond_6e

    if-eqz v2, :cond_6d

    move/from16 v20, v22

    nop

    :cond_6d
    move/from16 v6, v20

    goto :goto_26

    :cond_6e
    iget-object v6, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v6

    if-nez v6, :cond_70

    if-eqz v4, :cond_70

    if-eqz v2, :cond_6f

    const v6, 0x7f12029f

    goto :goto_28

    :cond_6f
    const v6, 0x7f120747

    :goto_28
    goto :goto_26

    :cond_70
    if-eqz v2, :cond_71

    const v6, 0x7f12029f

    goto :goto_29

    :cond_71
    if-eqz v12, :cond_72

    if-eqz v5, :cond_72

    iget-object v6, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v6

    if-nez v6, :cond_72

    const/4 v6, 0x0

    goto :goto_29

    :cond_72
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getDefaultInstruction(I)I

    move-result v6

    :goto_29
    goto :goto_26

    :goto_2a
    if-eqz v6, :cond_73

    iget-object v7, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_73
    const-string v7, ""

    return-object v7
.end method

.method protected getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object v0
.end method

.method public getStopHelpText()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisOptionEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-nez v2, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustAgentDisabled(I)Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    if-nez v2, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v7

    if-eqz v7, :cond_2

    move v3, v4

    nop

    :cond_2
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f1205f1

    goto :goto_2

    :cond_3
    const v4, 0x7f1205ef

    :goto_2
    move v0, v4

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x7f1205b2

    goto :goto_3

    :cond_5
    const v4, 0x7f1205b0

    :goto_3
    move v0, v4

    :goto_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_6
    const-string v4, ""

    return-object v4
.end method

.method public hideTransientIndication()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    :cond_0
    return-void
.end method

.method public hideTransientIndicationDelayed(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public restoreIndicationText(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    return-void
.end method

.method public restoreLockIcons()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mOriginalLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mOriginalLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isLockIconVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateLockIconVisibility(ZZ)V

    return-void
.end method

.method public setDozing(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    return-void
.end method

.method public setHelpText(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getHelpText(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setRestingIndication(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setIndicationTextForLockStar(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    return-void
.end method

.method public setLockIconForLockStar(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLockSecureIconForLockStar(Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isLockIconVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateLockIconVisibility(ZZ)V

    return-void
.end method

.method public setRestingIndication(Ljava/lang/String;)V
    .locals 3

    const-string v0, "KeyguardIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRestingIndication : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRestingIndication:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method

.method public setVisible(Z)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isHelpTextInvisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    :cond_4
    :goto_1
    return-void
.end method

.method public showBounceAnimation()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAffordancePivotY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSineOut33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$7;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/animation/Animator;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v7, v6, [F

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v8

    const/4 v9, 0x0

    aput v8, v7, v9

    const v8, 0x3f733333    # 0.95f

    aput v8, v7, v3

    invoke-static {v2, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v4, v3, [Landroid/animation/Animator;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v6, [F

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v7

    aput v7, v6, v9

    aput v8, v6, v3

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v4, v9

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_2
    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public showTransientIndication(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showTransientIndication(Ljava/lang/CharSequence;)V
    .locals 3

    const-string v0, "KeyguardIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showTransientIndication : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColor:I

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public showTransientIndication(Ljava/lang/CharSequence;I)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColor:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    return-void
.end method

.method protected final updateIndication(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mScreenOn:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computeIndication()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->switchIndication(Ljava/lang/CharSequence;Z)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method
