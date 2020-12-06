.class public Lcom/android/keyguard/KeyguardSecPasswordView;
.super Lcom/android/keyguard/KeyguardPasswordView;
.source "KeyguardSecPasswordView.java"


# instance fields
.field private mBouncerShowing:Z

.field private mContainer:Landroid/view/ViewGroup;

.field private mIsIrisAuthenticated:Z

.field private mIsMobileKeyboardCovered:I

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

.field private final mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/KeyguardSecPasswordView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecPasswordView$1;-><init>(Lcom/android/keyguard/KeyguardSecPasswordView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecPasswordView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mIsMobileKeyboardCovered:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecPasswordView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mBouncerShowing:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardSecPasswordView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecPasswordView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mIsIrisAuthenticated:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/KeyguardSecPasswordView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mIsIrisAuthenticated:Z

    return p1
.end method

.method private enableHidingPassword(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    const v2, 0x7f080412

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    const v2, 0x7f08040e

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setImageResource(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1205ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    const v2, 0x7f080413

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    const v2, 0x7f08040f

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setImageResource(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12072d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_4
    :goto_3
    const-string v0, "KeyguardSecPasswordView"

    const-string v1, "enableHidingPassword() view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isStrongAuthPromptMessage()Z
    .locals 3

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPromptReason:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPromptReason:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPromptReason:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic lambda$onFinishInflate$2(Lcom/android/keyguard/KeyguardSecPasswordView;Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mBouncerShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPasswordView;->isHideKeyboardByDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mIsMobileKeyboardCovered:I

    if-nez v0, :cond_0

    const-string v0, "KeyguardSecPasswordView"

    const-string v1, "Update iris preview caused due to click on password entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, -0x8

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1204a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->irisAuthenticationHelp(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onFinishInflate$3(Lcom/android/keyguard/KeyguardSecPasswordView;Landroid/view/View;Z)V
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onFinishInflate$4(Lcom/android/keyguard/KeyguardSecPasswordView;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->enableHidingPassword(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setAccessibilitySelection(II)V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$5(Lcom/android/keyguard/KeyguardSecPasswordView;Landroid/net/Uri;)V
    .locals 2

    const-string/jumbo v0, "show_keyboard_button"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowKeyboardButton()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mSwitchImeButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onResume$0(Lcom/android/keyguard/KeyguardSecPasswordView;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public static synthetic lambda$onResume$1(Lcom/android/keyguard/KeyguardSecPasswordView;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPasswordView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPasswordView;->isHideKeyboardByDefault()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowImeAtScreenOn:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$yJ-Bal--AB3fqQBdDZ_h5m6Yhxs;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$yJ-Bal--AB3fqQBdDZ_h5m6Yhxs;-><init>(Lcom/android/keyguard/KeyguardSecPasswordView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/keyguard/KeyguardSecPasswordView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected displayDefaultSecurityMessage()V
    .locals 6

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPasswordView;->isStrongAuthPromptMessage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecPasswordView"

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

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "KeyguardSecPasswordView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayDefaultSecurityMessage - isStrongAuthPromptMessage ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPromptReason:I

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

    const v0, 0x7f1206e8

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPasswordView;->setSubSecurityMessage(II)V

    goto :goto_1

    :cond_1
    const v0, 0x7f1206e7

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPasswordView;->setSubSecurityMessage(II)V

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->m2StepVerification:Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->m2StepVerification:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutBiometricAttemptDeadline(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v3, ""

    invoke-interface {v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f120533

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/KeyguardSecPasswordView;->setSubSecurityMessage(II)V

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/KeyguardSecPasswordView;->setSubSecurityMessage(II)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/KeyguardTextBuilder;->getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const v2, 0x7f1206e7

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/KeyguardSecPasswordView;->setSubSecurityMessage(II)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    return v1

    :cond_1
    return v1
.end method

.method protected getSecurityViewId()I
    .locals 1

    const v0, 0x7f0a028d

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040456

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    const v0, 0x7f1205b6

    return v0
.end method

.method protected hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 13

    const-string v0, "com.sec.android.inputmethod/.SamsungKeypad"

    const-string v1, "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    if-le v3, v6, :cond_0

    return v6

    :cond_0
    nop

    invoke-virtual {p1, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const-string v9, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    if-le v8, v6, :cond_2

    const/4 v8, 0x1

    :cond_2
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v12

    if-eqz v12, :cond_4

    add-int/lit8 v9, v9, 0x1

    :cond_4
    goto :goto_1

    :cond_5
    sub-int v10, v8, v9

    if-gtz v10, :cond_6

    if-eqz p2, :cond_7

    if-le v9, v6, :cond_7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    :cond_7
    goto :goto_0

    :cond_8
    if-le v3, v6, :cond_9

    goto :goto_2

    :cond_9
    const/4 v6, 0x0

    :goto_2
    return v6
.end method

.method protected onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPasswordView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/net/Uri;

    const-string/jumbo v4, "show_keyboard_button"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexStandalone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecPasswordView;->setClickable(Z)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecPasswordView;->setFocusableInTouchMode(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPasswordView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPasswordView;->onFinishInflate()V

    const v0, 0x7f0a0112

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$4xEVkKS2GcF2k0sbNrlyh5YqtJc;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$4xEVkKS2GcF2k0sbNrlyh5YqtJc;-><init>(Lcom/android/keyguard/KeyguardSecPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexStandalone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$Jx5tuhEq8Wk5GgVShlbs8V9Owf4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$Jx5tuhEq8Wk5GgVShlbs8V9Owf4;-><init>(Lcom/android/keyguard/KeyguardSecPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    const v0, 0x7f0a03d2

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1205ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mContext:Landroid/content/Context;

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setPointerIcon(Landroid/view/PointerIcon;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$2SsYDnK5hiLIQTu0_vtIdeq39i8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$2SsYDnK5hiLIQTu0_vtIdeq39i8;-><init>(Lcom/android/keyguard/KeyguardSecPasswordView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mIsMobileKeyboardCovered:I

    :cond_2
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$Z7ZS-JpZb0Y1wiuenJ6byD10GHI;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$Z7ZS-JpZb0Y1wiuenJ6byD10GHI;-><init>(Lcom/android/keyguard/KeyguardSecPasswordView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p5

    invoke-super/range {p0 .. p5}, Lcom/android/keyguard/KeyguardPasswordView;->onLayout(ZIIII)V

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mEcaView:Landroid/view/View;

    if-eqz v2, :cond_8

    const/4 v2, -0x1

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    const v4, 0x105018e

    const/4 v5, 0x0

    if-ge v3, v1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarForceHide()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    move v2, v6

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v1, :cond_2

    const/4 v2, 0x0

    :cond_2
    :goto_1
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v6

    if-eqz v6, :cond_4

    const-class v6, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->getNavigationBarGestureEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    sget v2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SEC_IN_DISPLAY_FINGERPRINT_HEIGHT:I

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v7, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SEC_IN_DISPLAY_FINGERPRINT_HEIGHT:I

    sub-int v2, v7, v3

    :goto_2
    goto :goto_3

    :cond_4
    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mEcaView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    :goto_3
    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mEcaView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v11, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v1

    iget-object v12, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v12, v4, :cond_5

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070302

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/4 v2, 0x0

    :cond_5
    if-eqz v7, :cond_6

    iget-object v12, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v12, :cond_6

    iget-object v12, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v12

    if-eqz v12, :cond_6

    sget-boolean v12, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_FOR_TABLET:Z

    if-nez v12, :cond_6

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070303

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/4 v2, 0x0

    :cond_6
    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_7
    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mEcaView:Landroid/view/View;

    invoke-virtual {v3, v5, v5, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_8
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isShowKeyboardButton()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->updateSwitchImeButton()V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/Rune;->isFingerprintSensorInDisplay(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mBouncerShowing:Z

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    goto :goto_4

    :cond_9
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mSwitchImeButton:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/Rune;->isFingerprintSensorInDisplay(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_a
    :goto_4
    return-void
.end method

.method protected onPasswordChecked(IZIZ)V
    .locals 7

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    :cond_0
    const-string/jumbo v6, "password"

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-super/range {v1 .. v6}, Lcom/android/keyguard/KeyguardPasswordView;->onPasswordChecked(IZIZLjava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPasswordView;->onPause()V

    return-void
.end method

.method public onResume(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPasswordView;->onResume(I)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowKeyboardButton()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isPasswordVisibilityEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KeyguardSecPasswordView"

    const-string v2, "<<<--->>> hide button"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mShowPasswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_1
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$1S2S2FmBFwMpZfI7Ta-3wlxS2tw;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPasswordView$1S2S2FmBFwMpZfI7Ta-3wlxS2tw;-><init>(Lcom/android/keyguard/KeyguardSecPasswordView;I)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/keyguard/KeyguardSecPasswordView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPasswordView;->reset()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->enableHidingPassword(Z)V

    return-void
.end method

.method protected resetState()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPasswordView;->displayDefaultSecurityMessage()V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->m2StepVerification:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->setPasswordEntryEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->setPasswordEntryInputEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->setPasswordEntryEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->setPasswordEntryInputEnabled(Z)V

    :goto_0
    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPasswordView;->setPasswordEntryEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected updateSwitchImeButton()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mSwitchImeButton:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/KeyguardSecPasswordView;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v3

    const/16 v4, 0x8

    if-nez v3, :cond_3

    if-eq v0, v2, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mSwitchImeButton:Landroid/view/View;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isShowKeyboardButton()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    const v4, 0x7f070325

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_5
    const v4, 0x7f070324

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPasswordView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
