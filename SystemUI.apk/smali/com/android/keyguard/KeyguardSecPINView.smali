.class public Lcom/android/keyguard/KeyguardSecPINView;
.super Lcom/android/keyguard/KeyguardPINView;
.source "KeyguardSecPINView.java"


# instance fields
.field private final mClickCallback:Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;

.field private mEcaButton:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private final mVerifyNDigitsPINRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v0, Lcom/android/keyguard/-$$Lambda$z1thP25qRJOSvMksskqX7ITa5qo;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$z1thP25qRJOSvMksskqX7ITa5qo;-><init>(Lcom/android/keyguard/KeyguardSecPINView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mVerifyNDigitsPINRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardSecPINView$vDRL714Y13kGm4aiXgM6rW9jXyk;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPINView$vDRL714Y13kGm4aiXgM6rW9jXyk;-><init>(Lcom/android/keyguard/KeyguardSecPINView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mClickCallback:Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mHandler:Landroid/os/Handler;

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    return-void
.end method

.method private isStrongAuthPromptMessage()Z
    .locals 3

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mPromptReason:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mPromptReason:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mPromptReason:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mPromptReason:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/keyguard/KeyguardSecPINView;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    return-void
.end method

.method public static synthetic lambda$vDRL714Y13kGm4aiXgM6rW9jXyk(Lcom/android/keyguard/KeyguardSecPINView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPINView;->verifyNDigitsPIN()V

    return-void
.end method

.method private verifyNDigitsPIN()V
    .locals 6

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getNDigitsPIN()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPINView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-boolean v2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIMPLE_PIN:Z

    if-eqz v2, :cond_1

    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPINView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v2, v2, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPINView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPINView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    check-cast v2, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v2}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_1

    const-string v2, "KeyguardSecPINView"

    const-string/jumbo v3, "verifyPassword by N digits pin option"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPINView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    check-cast v2, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/SecPasswordTextView;->setMaxLength(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPINView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPINView;->mVerifyNDigitsPINRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPINView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPINView;->mVerifyNDigitsPINRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->afterTextChanged(Landroid/text/Editable;)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPINView;->verifyNDigitsPIN()V

    return-void
.end method

.method protected displayDefaultSecurityMessage()V
    .locals 6

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPINView;->isStrongAuthPromptMessage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecPINView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayDefaultSecurityMessage( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "KeyguardSecPINView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayDefaultSecurityMessage - isStrongAuthPromptMessage ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardSecPINView;->mPromptReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_IS_VZW_DEVICE:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    const v0, 0x7f1206ee

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPINView;->setSubSecurityMessage(II)V

    goto :goto_1

    :cond_1
    const v0, 0x7f1206ed

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPINView;->setSubSecurityMessage(II)V

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->m2StepVerification:Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->m2StepVerification:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutBiometricAttemptDeadline(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v3, ""

    invoke-interface {v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPINView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f12052c

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/KeyguardSecPINView;->setSubSecurityMessage(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecPINView;->setPasswordEntryEnabled(Z)V

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/KeyguardSecPINView;->setSubSecurityMessage(II)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecPINView;->setPasswordEntryEnabled(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected getSecurityViewId()I
    .locals 1

    const v0, 0x7f0a028f

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    const v0, 0x7f1205b1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v0, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIMPLE_PIN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPINView;->mClickCallback:Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecPasswordTextView;->setOnClickCallback(Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v0, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIMPLE_PIN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecPasswordTextView;->setOnClickCallback(Lcom/android/keyguard/SecPasswordTextView$OnClickCallback;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->onFinishInflate()V

    const v0, 0x7f0a03d1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mRow0:Landroid/view/ViewGroup;

    const v0, 0x7f0a0463

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mRow1:Landroid/view/ViewGroup;

    const v0, 0x7f0a0464

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mRow2:Landroid/view/ViewGroup;

    const v0, 0x7f0a0465

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mRow3:Landroid/view/ViewGroup;

    const/4 v0, 0x6

    new-array v0, v0, [[Landroid/view/View;

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPINView;->mRow0:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v6, 0x2

    aput-object v3, v2, v6

    aput-object v2, v0, v4

    new-array v2, v1, [Landroid/view/View;

    const v3, 0x7f0a0242

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0a0243

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f0a0244

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v5

    new-array v2, v1, [Landroid/view/View;

    const v3, 0x7f0a0245

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0a0246

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f0a0247

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v6

    new-array v2, v1, [Landroid/view/View;

    const v3, 0x7f0a0248

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0a0249

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f0a024a

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    new-array v2, v1, [Landroid/view/View;

    const v3, 0x7f0a0140

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0a0241

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f0a024b

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v1, v1, [Landroid/view/View;

    const v2, 0x7f0a024c

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPINView;->mEcaButton:Landroid/view/View;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPINView;->mEcaView:Landroid/view/View;

    aput-object v2, v1, v6

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mViews:[[Landroid/view/View;

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIMPLE_PIN:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPINView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPINView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    :cond_0
    const v0, 0x7f0a00da

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardSecPINView$K9pkaL9kw7AL-MZ4PVtcIWunzg0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPINView$K9pkaL9kw7AL-MZ4PVtcIWunzg0;-><init>(Lcom/android/keyguard/KeyguardSecPINView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected resetState()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->resetState()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPINView;->displayDefaultSecurityMessage()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mEcaView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected setOkButtonEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIMPLE_PIN:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getNDigitsPIN()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPINView;->mOkButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPINView;->mOkButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPINView;->mOkButton:Landroid/view/View;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->setOkButtonEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public startAppearAnimation()V
    .locals 7

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v5, 0x14d

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPINView;->mEcaView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPINView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xa7

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x1

    return v0
.end method

.method protected updatePINView()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPINView;->updateNumPadKeyTextView()V

    return-void
.end method
