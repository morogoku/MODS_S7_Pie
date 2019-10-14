.class public Lcom/android/systemui/KeyguardTextBuilder;
.super Ljava/lang/Object;
.source "KeyguardTextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;,
        Lcom/android/systemui/KeyguardTextBuilder$PromptReason;,
        Lcom/android/systemui/KeyguardTextBuilder$Security;,
        Lcom/android/systemui/KeyguardTextBuilder$Biometric;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/KeyguardTextBuilder;


# instance fields
.field private m2StepVerification:Z

.field private mAddRemainingAttempt:I

.field private mBiometricType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDeviceType:Ljava/lang/String;

.field private mDismissActionType:Ljava/lang/String;

.field private mIsFace:Z

.field private mIsFingerprint:Z

.field private mIsIb:Z

.field private mIsIris:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPromptReasonType:Ljava/lang/String;

.field private mSecurityType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->m2StepVerification:Z

    iput-object p1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "tablet"

    goto :goto_0

    :cond_0
    const-string v0, "none"

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    return-void
.end method

.method private getAddRemainingAttemptIndication(I)Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mAddRemainingAttempt:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100003

    iget v3, p0, Lcom/android/systemui/KeyguardTextBuilder;->mAddRemainingAttempt:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mAddRemainingAttempt:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/KeyguardTextBuilder;
    .locals 1

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder;->sInstance:Lcom/android/systemui/KeyguardTextBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder;

    invoke-direct {v0, p0}, Lcom/android/systemui/KeyguardTextBuilder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder;->sInstance:Lcom/android/systemui/KeyguardTextBuilder;

    :cond_0
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder;->sInstance:Lcom/android/systemui/KeyguardTextBuilder;

    return-object v0
.end method

.method private updateCurrentState(Z)V
    .locals 8

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getAddRemainingAttempt(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/KeyguardTextBuilder;->mAddRemainingAttempt:I

    iget-object v3, p0, Lcom/android/systemui/KeyguardTextBuilder;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v3

    const/4 v5, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v6, v3, 0x1

    if-ne v6, v5, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    iput-boolean v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    if-nez v1, :cond_1

    and-int/lit8 v6, v3, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    iput-boolean v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    if-nez v1, :cond_2

    and-int/lit16 v6, v3, 0x100

    const/16 v7, 0x100

    if-ne v6, v7, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    iput-boolean v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    if-nez v1, :cond_3

    and-int/lit16 v6, v3, 0x1000

    const/16 v7, 0x1000

    if-ne v6, v7, :cond_3

    move v6, v5

    goto :goto_3

    :cond_3
    move v6, v4

    :goto_3
    iput-boolean v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIb:Z

    if-nez p1, :cond_e

    iget-boolean v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v2, :cond_4

    move v6, v5

    goto :goto_4

    :cond_4
    move v6, v4

    :goto_4
    iput-boolean v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustAgentDisabled(I)Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_9

    :cond_5
    iget-boolean v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->m2StepVerification:Z

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIrisAuthenticated(I)Z

    move-result v6

    if-nez v6, :cond_6

    move v6, v5

    goto :goto_5

    :cond_6
    move v6, v4

    :goto_5
    iput-boolean v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    goto :goto_7

    :cond_7
    iget-boolean v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v6

    if-eqz v6, :cond_8

    move v6, v5

    goto :goto_6

    :cond_8
    move v6, v4

    :goto_6
    iput-boolean v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    :goto_7
    iget-boolean v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/Rune;->isFingerprintSensorInDisplay(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v6

    if-eqz v6, :cond_a

    move v6, v5

    goto :goto_8

    :cond_a
    move v6, v4

    :goto_8
    iput-boolean v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    iget-boolean v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIb:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v6

    if-eqz v6, :cond_b

    move v4, v5

    nop

    :cond_b
    iput-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIb:Z

    goto :goto_a

    :cond_c
    :goto_9
    iget-boolean v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v6

    if-eqz v6, :cond_d

    move v4, v5

    nop

    :cond_d
    iput-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    :cond_e
    :goto_a
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    if-eqz v4, :cond_10

    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    if-nez v4, :cond_f

    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIb:Z

    if-nez v4, :cond_f

    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    if-eqz v4, :cond_10

    :cond_f
    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->MultiBiometrics:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_b

    :cond_10
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    if-eqz v4, :cond_11

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_b

    :cond_11
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIris:Z

    if-eqz v4, :cond_12

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Iris:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_b

    :cond_12
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    if-eqz v4, :cond_13

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Face:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_b

    :cond_13
    iget-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsIb:Z

    if-eqz v4, :cond_14

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Intelligent:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_b

    :cond_14
    const-string v4, "none"

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    :goto_b
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDismissActionExist()Z

    move-result v4

    if-eqz v4, :cond_15

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$1;->$SwitchMap$com$android$keyguard$KeyguardConstants$KeyguardDismissActionType:[I

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDismissActionType()Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->Active:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto :goto_c

    :pswitch_0
    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->EmergencyModeOff:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto :goto_c

    :pswitch_1
    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->EmergencyModeOn:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto :goto_c

    :pswitch_2
    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto :goto_c

    :cond_15
    const-string v4, "none"

    iput-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    :goto_c
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->m2StepVerification:Z

    :cond_16
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$1;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$Security;->Password:Lcom/android/systemui/KeyguardTextBuilder$Security;

    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$Security;->Direction:Lcom/android/systemui/KeyguardTextBuilder$Security;

    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$Security;->Pattern:Lcom/android/systemui/KeyguardTextBuilder$Security;

    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$Security;->Password:Lcom/android/systemui/KeyguardTextBuilder$Security;

    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$Security;->PIN:Lcom/android/systemui/KeyguardTextBuilder$Security;

    invoke-virtual {v0}, Lcom/android/systemui/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v1, 0x104029c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-direct {p0, p1}, Lcom/android/systemui/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/KeyguardTextBuilder;->updateCurrentState(Z)V

    iget-boolean v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->m2StepVerification:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "none"

    iput-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    sget-object v6, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->MultiBiometrics:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v6}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v6

    if-ne v5, v6, :cond_2

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120811

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    sget-object v6, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Iris:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v6}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v6

    if-ne v5, v6, :cond_3

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120813

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    sget-object v6, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v6}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v6

    if-ne v5, v6, :cond_4

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120812

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_4
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFace:Z

    const v6, 0x7f120546

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustAgentDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_5
    iget-boolean v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mIsFingerprint:Z

    const v11, 0x7f120547

    if-eqz v5, :cond_8

    sget-object v5, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v5}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v5

    iget-object v12, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->EmergencyModeOn:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v5}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v5

    iget-object v12, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->EmergencyModeOff:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v5}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v5

    iget-object v12, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "none"

    aput-object v7, v6, v4

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->FaceFingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v10

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v4, v6, v9

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->ItPolicy:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_7
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v7, v6, v4

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v10

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v4, v6, v9

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object v4, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_8
    sget-object v5, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v5}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v5

    iget-object v12, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    sget-object v5, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->EmergencyModeOn:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v5}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v5

    iget-object v12, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    sget-object v5, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->EmergencyModeOff:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v5}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v5

    iget-object v12, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_2

    :cond_9
    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "none"

    aput-object v7, v6, v4

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    aput-object v4, v6, v10

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v4, v6, v9

    sget-object v4, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->DeviceAdmin:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v4}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_a
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v7, v6, v4

    const-string v4, "none"

    aput-object v4, v6, v10

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v4, v6, v9

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object v4, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_b
    sget-object v5, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v5}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v5

    iget-object v11, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    sget-object v5, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->EmergencyModeOn:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v5}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v5

    iget-object v11, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    sget-object v5, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->EmergencyModeOff:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v5}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v5

    iget-object v11, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_3

    :cond_c
    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f12052f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    aput-object v7, v6, v4

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v4, v6, v10

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_d
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v7, v6, v4

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    aput-object v4, v6, v10

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v4, v6, v9

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object v4, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "string"

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, v0}, Lcom/android/systemui/KeyguardTextBuilder;->getAddRemainingAttemptIndication(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_e
    const-string v4, "KeyguardTextBuilder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find default string id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-object v2
.end method

.method public getFPFailedAttemptionGuideMessageWhenScreenOff(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f12072a

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v2, Lcom/android/systemui/KeyguardTextBuilder$1;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const v3, 0x7f120726

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f120727

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f120728

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    :goto_0
    nop

    iget-object v3, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v4, 0x7f120729

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v1, 0x104029c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    iget-object v1, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/KeyguardTextBuilder;->updateCurrentState(Z)V

    packed-switch p2, :pswitch_data_0

    const-string v2, ""

    return-object v2

    :pswitch_0
    sget-object v3, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->DeviceAdmin:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v3}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    const-string v1, "none"

    goto :goto_0

    :pswitch_1
    sget-object v3, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->Timeout:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v3}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v3, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->Restart:Lcom/android/systemui/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v3}, Lcom/android/systemui/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    nop

    :goto_0
    sget-object v3, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v3}, Lcom/android/systemui/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f120546

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v8, v7, v6

    const-string v6, "none"

    aput-object v6, v7, v2

    iget-object v2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v2, v7, v5

    iget-object v2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    aput-object v2, v7, v4

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f120547

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v6

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    aput-object v6, v7, v2

    iget-object v2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v2, v7, v5

    iget-object v2, p0, Lcom/android/systemui/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    aput-object v2, v7, v4

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "string"

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v3}, Lcom/android/systemui/KeyguardTextBuilder;->getAddRemainingAttemptIndication(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v4, "KeyguardTextBuilder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find prompt string id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getWarningAutoWipeMessage(II)Ljava/lang/String;
    .locals 10

    const-string v0, ""

    const-string v1, "none"

    const-string v2, "none"

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    const-string v1, "1"

    :cond_0
    if-ne p2, v3, :cond_1

    const-string v2, "1"

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12082d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    aput-object v1, v5, v3

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v8, "string"

    iget-object v9, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v4, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_5

    const-string v8, "none"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "none"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v8, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v6, "1"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-virtual {v6, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-virtual {v6, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-virtual {v6, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v3, "KeyguardTextBuilder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t find the warning on auto wipe string id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public getWarningFRPMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    const-string v1, "none"

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const-string v1, "1"

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    iget-object v3, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120548

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "string"

    iget-object v7, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v3, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    invoke-virtual {v5, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v2, "KeyguardTextBuilder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find warning frp string id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public getWarningReactivationMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    const-string v1, "none"

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const-string v1, "1"

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    iget-object v3, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120549

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "string"

    iget-object v7, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v3, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/systemui/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    invoke-virtual {v5, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v2, "KeyguardTextBuilder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find warning reactivation string id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method
