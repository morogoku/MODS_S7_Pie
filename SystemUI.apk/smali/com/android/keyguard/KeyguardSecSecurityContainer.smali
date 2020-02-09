.class public Lcom/android/keyguard/KeyguardSecSecurityContainer;
.super Lcom/android/keyguard/KeyguardSecurityContainer;
.source "KeyguardSecSecurityContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecSecurityContainer$WipeConfirmListener;
    }
.end annotation


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFactoryResetProtectionType:I

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mIsNotiClickedOnShadeLocked:Z

.field private mIsSubDisplay:Z

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mRemainingBeforeWipe:I

.field private mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

.field private mWipeConfirmListener:Lcom/android/keyguard/KeyguardSecSecurityContainer$WipeConfirmListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mWipeConfirmListener:Lcom/android/keyguard/KeyguardSecSecurityContainer$WipeConfirmListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mFactoryResetProtectionType:I

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mIsSubDisplay:Z

    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardSecSecurityContainer$FmOWmFOalLU1Vv8u9mnOYV8Nrbk;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecSecurityContainer$FmOWmFOalLU1Vv8u9mnOYV8Nrbk;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    new-instance v0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    new-instance v0, Lcom/android/keyguard/KeyguardSecSecurityContainer$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer$2;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mAlarmManager:Landroid/app/AlarmManager;

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_WARNING_WIPE_OUT_MESSAGE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->updateFactoryResetProtectionType()V

    :cond_0
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mInputManager:Landroid/hardware/input/InputManager;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mDisplay:Landroid/view/Display;

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecSecurityContainer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecSecurityContainer;)Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSecSecurityContainer;)Lcom/android/systemui/KnoxStateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSecSecurityContainer;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showBackupSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSecSecurityContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->updateLayoutMargins()V

    return-void
.end method

.method private doWipeOutIfMaxFailedAttemptsSinceBoot()V
    .locals 8

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRecoveryLock()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-direct {p0, v2, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->getSecFailedAttemptsBeforeWipe(ZI)I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->getSecFailedAttemptsBeforeWipe(ZI)I

    move-result v3

    :goto_0
    const-string v5, "KeyguardSecSecurityView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doWipeOutIfMaxFailedAttemptsSinceBoot( failedAttemptsBeforeWipe = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , failedAttempts = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v3, :cond_1

    if-lt v1, v3, :cond_1

    const-string v5, "KeyguardSecSecurityView"

    const-string v6, "doWipeOutIfMaxFailedAttemptsSinceBoot( Too many unlock attempts; device will be wiped! )"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/util/ResetDeviceUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/util/ResetDeviceUtils;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Lcom/android/systemui/util/ResetDeviceUtils;->wipeOut(II)V

    :cond_1
    return-void
.end method

.method private getCutoutHeight()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    :cond_3
    :goto_0
    return v0
.end method

.method private getSecFailedAttemptsBeforeWipe(ZI)I
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    if-lez v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/16 v1, 0xf

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isPasswordView()Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_0

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

.method public static synthetic lambda$FmOWmFOalLU1Vv8u9mnOYV8Nrbk(Lcom/android/keyguard/KeyguardSecSecurityContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->onRotationChanged(I)V

    return-void
.end method

.method public static synthetic lambda$showDialog$0(Lcom/android/keyguard/KeyguardSecSecurityContainer;Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDisableBiometricBySecurityDialog(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->reset()V

    return-void
.end method

.method private needsFitsSystemWindows(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexStandalone()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    return v0

    :cond_2
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v1, :cond_4

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v1, :cond_4

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v1, :cond_4

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v1, :cond_3

    goto :goto_2

    :cond_3
    goto :goto_3

    :cond_4
    :goto_2
    move v0, v2

    :goto_3
    return v0

    :cond_5
    return v0
.end method

.method private onRotationChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->updateLayoutMargins()V

    return-void
.end method

.method private showBackupSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method private showWarningAtAutoWipeDialog(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/systemui/KeyguardTextBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/KeyguardTextBuilder;->getWarningAutoWipeMessage(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showWarningWipeOutDialog(II)V
    .locals 2

    iget v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mFactoryResetProtectionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/systemui/KeyguardTextBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/KeyguardTextBuilder;->getWarningReactivationMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/systemui/KeyguardTextBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/KeyguardTextBuilder;->getWarningFRPMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateFactoryResetProtectionType()V
    .locals 4

    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mFactoryResetProtectionType:I

    :cond_0
    const-string v1, "KeyguardSecSecurityView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFactoryResetProtectionType( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mFactoryResetProtectionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateLayoutMargins()V
    .locals 11

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    move v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->needsInput()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_3
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v6

    const v7, 0x105018c

    if-eqz v6, :cond_b

    sget-boolean v6, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v6, :cond_4

    goto/16 :goto_5

    :cond_4
    sget v6, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SEC_IN_DISPLAY_FINGERPRINT_HEIGHT:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->getCutoutHeight()I

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_9

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    const/4 v3, 0x0

    move v4, v8

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v9

    if-eqz v9, :cond_5

    move v7, v6

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :goto_1
    move v5, v7

    goto :goto_6

    :pswitch_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v10, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v9, v10, :cond_8

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v10, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v9, v10, :cond_8

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v10, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v9, v10, :cond_8

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v10, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v9, v10, :cond_6

    goto :goto_3

    :cond_6
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v9

    if-eqz v9, :cond_7

    move v7, v6

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :goto_2
    move v3, v7

    goto :goto_6

    :cond_8
    :goto_3
    const/4 v3, 0x0

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    move v5, v8

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v9

    if-eqz v9, :cond_a

    move v7, v6

    goto :goto_4

    :cond_a
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :goto_4
    move v4, v7

    goto :goto_6

    :cond_b
    :goto_5
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->isPasswordView()Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v3, 0x0

    goto :goto_6

    :cond_c
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_6
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v6, v4, v2, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, v6}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_d
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateStrongAuthStatus(II)V
    .locals 7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x10

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v5, 0x100

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-ne v4, v1, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v6, 0x1000

    invoke-virtual {v5, v6, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    if-ne v5, v1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-nez v0, :cond_4

    if-nez v3, :cond_4

    if-nez v4, :cond_4

    if-eqz v1, :cond_a

    :cond_4
    if-lez p2, :cond_a

    const/16 v2, 0xa

    const/4 v5, 0x2

    if-lt p2, v2, :cond_7

    iget v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    const/4 v6, 0x5

    if-gt v2, v6, :cond_a

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    :cond_5
    if-eqz v4, :cond_6

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    :cond_6
    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForIB()V

    goto :goto_4

    :cond_7
    iget v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    if-gt v2, v5, :cond_a

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    if-eqz v3, :cond_8

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    :cond_8
    if-eqz v4, :cond_9

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    :cond_9
    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForIB()V

    :cond_a
    :goto_4
    return-void
.end method

.method private updateSubDisplayState()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getLidState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mIsSubDisplay:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "KeyguardSecSecurityView"

    const-string v1, "getLayoutIdFor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/KeyguardSecSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const v0, 0x7f0d00cb

    return v0

    :pswitch_1
    const v0, 0x7f0d00c0

    return v0

    :pswitch_2
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_NOT_REQUIRE_SIMPUK_CODE:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d00c3

    goto :goto_0

    :cond_0
    const v0, 0x7f0d00c2

    :goto_0
    return v0

    :pswitch_3
    const v0, 0x7f0d00c1

    return v0

    :pswitch_4
    const v0, 0x7f0d00a3

    return v0

    :pswitch_5
    const v0, 0x7f0d00a2

    return v0

    :pswitch_6
    const v0, 0x7f0d00cd

    return v0

    :pswitch_7
    const v0, 0x7f0d0091

    return v0

    :pswitch_8
    const v0, 0x7f0d00b0

    return v0

    :pswitch_9
    const v0, 0x7f0d00bb

    return v0

    :pswitch_a
    const v0, 0x7f0d00a9

    return v0

    :pswitch_b
    const v0, 0x7f0d00bf

    return v0

    :pswitch_c
    const v0, 0x7f0d00a5

    return v0

    :pswitch_d
    const v0, 0x7f0d00bd

    return v0

    :pswitch_e
    const v0, 0x7f0d00bc

    return v0

    :pswitch_f
    const v0, 0x7f0d00be

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method protected getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 2

    const-string v0, "KeyguardSecSecurityView"

    const-string v1, "getSecurityViewIdForMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/KeyguardSecSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v0

    return v0

    :pswitch_1
    const v0, 0x7f0a02aa

    return v0

    :pswitch_2
    const v0, 0x7f0a029b

    return v0

    :pswitch_3
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_NOT_REQUIRE_SIMPUK_CODE:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a029c

    goto :goto_0

    :cond_0
    const v0, 0x7f0a02a4

    :goto_0
    return v0

    :pswitch_4
    const v0, 0x7f0a0267

    return v0

    :pswitch_5
    const v0, 0x7f0a0266

    return v0

    :pswitch_6
    const v0, 0x7f0a02ab

    return v0

    :pswitch_7
    const v0, 0x7f0a0252

    return v0

    :pswitch_8
    const v0, 0x7f0a0286

    return v0

    :pswitch_9
    const v0, 0x7f0a029a

    return v0

    :pswitch_a
    const v0, 0x7f0a0276

    return v0

    :pswitch_b
    const v0, 0x7f0a0294

    return v0

    :pswitch_c
    const v0, 0x7f0a026c

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->addListener(Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->removeListener(Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->onFinishInflate()V

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->updateSubDisplayState()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->doWipeOutIfMaxFailedAttemptsSinceBoot()V

    return-void
.end method

.method public onResume(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->onResume(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->updateLayoutMargins()V

    :cond_0
    return-void
.end method

.method protected reportFailedUnlockAttempt(II)V
    .locals 10

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->getSecFailedAttemptsBeforeWipe(ZI)I

    move-result v3

    if-lez v3, :cond_0

    sub-int v4, v3, v0

    goto :goto_0

    :cond_0
    const v4, 0x7fffffff

    :goto_0
    iput v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    invoke-direct {p0, v3, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->updateStrongAuthStatus(II)V

    const-string v4, "KeyguardSecSecurityView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reportFailedUnlockAttempt   \n failedAttemptsBeforeWipe: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\n mRemainingBeforeWipe  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\n failedAttempts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, p1, :cond_1

    if-eqz v4, :cond_2

    const/4 v6, 0x3

    goto :goto_1

    :cond_1
    const/16 v7, -0x2710

    if-eq v4, v7, :cond_2

    const/4 v6, 0x2

    :cond_2
    :goto_1
    iget v7, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    if-lez v7, :cond_3

    if-nez v2, :cond_5

    sget-boolean v7, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_WARNING_WIPE_OUT_MESSAGE:Z

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    iget v7, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    invoke-virtual {p0, v0, v7, v6}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showAlmostAtWipeDialog(III)V

    goto :goto_2

    :cond_3
    const-string v7, "KeyguardSecSecurityView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Too many unlock attempts; user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " will be wiped!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_4

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v4}, Landroid/app/admin/DevicePolicyManager;->semIsPasswordRecoverable(Landroid/content/ComponentName;I)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "KeyguardSecSecurityView"

    const-string v8, "Device will display the recovery lockscreen"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setRecoveryScreenLocked(ZI)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7, p1}, Landroid/app/admin/DevicePolicyManager;->recoverPassword(I)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v7}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->reset()V

    goto :goto_2

    :cond_4
    const-string v7, "KeyguardSecSecurityView"

    const-string v8, "Too many unlock attempts; device will be wiped !"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/util/ResetDeviceUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/util/ResetDeviceUtils;

    move-result-object v7

    invoke-virtual {v7, v0, v6}, Lcom/android/systemui/util/ResetDeviceUtils;->wipeOut(II)V

    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedStrongAuthUnlockAttempt(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    const-class v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    sget-boolean v4, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_WARNING_WIPE_OUT_MESSAGE:Z

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    if-eq v4, v1, :cond_6

    iget v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    if-ne v4, v5, :cond_8

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    iget v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    invoke-direct {p0, p1, v4}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showWarningWipeOutDialog(II)V

    :cond_7
    goto :goto_3

    :cond_8
    if-eqz v2, :cond_9

    iget v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    if-ne v4, v1, :cond_9

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    iget v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mRemainingBeforeWipe:I

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showWarningAtAutoWipeDialog(II)V

    :cond_9
    :goto_3
    if-lez p2, :cond_a

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportPasswordLockout(II)V

    :cond_a
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->updateLayoutMargins()V

    :cond_0
    return-void
.end method

.method public setNotiClickedOnShadeLocked(Z)V
    .locals 3

    const-string v0, "KeyguardSecSecurityView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNotiClickedOnShadeLocked= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mIsNotiClickedOnShadeLocked:Z

    return-void
.end method

.method protected showAlmostAtWipeDialog(III)V
    .locals 6

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtWipeDialog(III)V

    return-void

    :cond_0
    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    const v3, 0x7f120720

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    goto :goto_1

    :cond_1
    if-ne p2, v0, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    const v3, 0x7f120721

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    const v3, 0x7f120722

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    const v2, 0x103023a

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/keyguard/-$$Lambda$KeyguardSecSecurityContainer$oVjRR_BwB9m-T8WRTkw8UEQZ_xI;

    invoke-direct {v2, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecSecurityContainer$oVjRR_BwB9m-T8WRTkw8UEQZ_xI;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDisableBiometricBySecurityDialog(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method showNextSecurityScreenOrFinish(ZI)Z
    .locals 6

    const-string v0, "KeyguardSecSecurityView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showNextSecurityScreenOrFinish("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mContext:Landroid/content/Context;

    const-string v2, "User authentication is blocked by CC mode since it detects the device has been tampered"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SHOWING_SWIPE_BOUNCER:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SHOWING_SWIPE_BOUNCER:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mIsNotiClickedOnShadeLocked:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_3
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v4, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, p2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    sget-boolean v3, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SHOWING_SWIPE_BOUNCER:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v1, :cond_4

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mIsNotiClickedOnShadeLocked:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    :goto_0
    goto :goto_1

    :cond_6
    if-eqz p1, :cond_b

    sget-object v3, Lcom/android/keyguard/KeyguardSecSecurityContainer$3;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    const-string v3, "KeyguardSecSecurityView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad security screen "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", fail safe"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showPrimarySecurityScreen(Z)V

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, p2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v3

    const-class v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isLockScreenDisabledbyKNOX()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v4, :cond_8

    if-eqz v3, :cond_9

    :cond_8
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v3, :cond_a

    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_1

    :cond_a
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v2, 0x1

    const/4 v0, 0x1

    nop

    :cond_b
    :goto_1
    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v1, v2, p2}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->finish(ZI)V

    if-eqz p1, :cond_c

    const-string v1, "102"

    const-string v3, "1032"

    const-string v4, "1"

    invoke-static {v1, v3, v4}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 3

    const-string v0, "KeyguardSecSecurityView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showSecurityScreen("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->needsFitsSystemWindows(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->setFitsSystemWindows(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->setPadding(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->setFitsSystemWindows(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->updateLayoutMargins()V

    return-void
.end method

.method protected showTimeoutDialog(II)V
    .locals 2

    div-int/lit16 v0, p2, 0x3e8

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-super {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showTimeoutDialog(II)V

    return-void
.end method
