.class public abstract Lcom/android/keyguard/KeyguardSecPinBasedInputView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardSecPinBasedInputView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field private mAttached:Z

.field private mBouncerShowing:Z

.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field private mContainer:Landroid/view/ViewGroup;

.field private mCurrentMobileKeyboard:I

.field private mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field protected mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsImagePinLock:Z

.field protected mIsNightModeOn:Z

.field private mIsPINContainerShowing:Z

.field private mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mCurrentMobileKeyboard:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsPINContainerShowing:Z

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsNightModeOn:Z

    new-instance v0, Lcom/android/keyguard/KeyguardSecPinBasedInputView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView$2;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mBouncerShowing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setPINContainerVisibility(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->isUseKeyboard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mCurrentMobileKeyboard:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/KeyguardSecPinBasedInputView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mCurrentMobileKeyboard:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->updateKeyboardView()V

    return-void
.end method

.method private initializeBottomContainerView(I)V
    .locals 5

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsImagePinLock:Z

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsImagePinLock:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0a024b

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    goto :goto_1

    :cond_1
    const v2, 0x7f0a024c

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    new-instance v3, Lcom/android/keyguard/-$$Lambda$KeyguardSecPinBasedInputView$OlVAR7X5t9AyLoWxFfp2gx_7KzE;

    invoke-direct {v3, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPinBasedInputView$OlVAR7X5t9AyLoWxFfp2gx_7KzE;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEnabledRapidKeyInput()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    new-instance v3, Lcom/android/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_2
    const v2, 0x7f0a0140

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDeleteButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDeleteButton:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDeleteButton:Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/-$$Lambda$KeyguardSecPinBasedInputView$JbwRfpdGICQdYgI-FtVM7h_FNGA;

    invoke-direct {v2, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPinBasedInputView$JbwRfpdGICQdYgI-FtVM7h_FNGA;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDeleteButton:Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/-$$Lambda$KeyguardSecPinBasedInputView$-K2U3tdh39LgbXPCCbV2rXbLQLY;

    invoke-direct {v2, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPinBasedInputView$-K2U3tdh39LgbXPCCbV2rXbLQLY;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledRapidKeyInput()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDeleteButton:Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_3
    const v1, 0x7f0a0241

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton0:Landroid/view/View;

    const v1, 0x7f0a0242

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton1:Landroid/view/View;

    const v1, 0x7f0a0243

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton2:Landroid/view/View;

    const v1, 0x7f0a0244

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton3:Landroid/view/View;

    const v1, 0x7f0a0245

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton4:Landroid/view/View;

    const v1, 0x7f0a0246

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton5:Landroid/view/View;

    const v1, 0x7f0a0247

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton6:Landroid/view/View;

    const v1, 0x7f0a0248

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton7:Landroid/view/View;

    const v1, 0x7f0a0249

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton8:Landroid/view/View;

    const v1, 0x7f0a024a

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton9:Landroid/view/View;

    if-nez v0, :cond_5

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContext:Landroid/content/Context;

    const v2, 0x7f080481

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContext:Landroid/content/Context;

    const v2, 0x7f0805ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    :goto_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDeleteButton:Landroid/view/View;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDeleteButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void
.end method

.method private isRTL()Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isUseKeyboard()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mCurrentMobileKeyboard:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexStandalone()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic lambda$initializeBottomContainerView$2(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->verifyPasswordAndUnlock()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$initializeBottomContainerView$3(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->deleteLastChar()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v0, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setOkButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$initializeBottomContainerView$4(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetPasswordText(ZZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->doHapticKeyClick()V

    return v1
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onUserInput()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setOkButtonEnabled(Z)V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$1(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Landroid/view/View;Z)V
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private setPINContainerVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetPasswordText(ZZ)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsPINContainerShowing:Z

    return-void
.end method

.method private updateCarrierTextPadding()V
    .locals 7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050365

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/util/DeviceState;->getDeviceResolutionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_4

    if-lez v0, :cond_2

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v0

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    goto :goto_2

    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0707bf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    :goto_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->isRTL()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v4}, Lcom/android/keyguard/CarrierText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/android/keyguard/CarrierText;->setPadding(IIII)V

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/android/keyguard/CarrierText;->setPadding(IIII)V

    :cond_4
    :goto_3
    return-void
.end method

.method private updateKeyboardView()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->resetPasswordText(ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->isUseKeyboard()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->setNeedsInput(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->isUseKeyboard()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setGravity(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const v2, 0x800033

    invoke-virtual {v1, v2}, Lcom/android/keyguard/PasswordTextView;->setGravity(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private updateRippleSize(Landroid/view/View;Landroid/graphics/drawable/RippleDrawable;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07052a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    if-eqz p2, :cond_0

    instance-of v3, p2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_0

    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int v5, v0, v2

    add-int v6, v1, v2

    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onUserInput()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v0, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/KeyguardTextBuilder;->getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    sget-boolean v2, Lcom/android/systemui/Rune;->KEYGUARD_IS_VZW_DEVICE:Z

    if-eqz v2, :cond_0

    const v2, 0x7f1206ee

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setSubSecurityMessage(II)V

    goto :goto_0

    :cond_0
    const v2, 0x7f1206ed

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setSubSecurityMessage(II)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    return v1

    :cond_2
    return v1
.end method

.method public needsInput()Z
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eq v0, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexStandalone()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    const-string v0, "KeyguardSecPinBasedInputView"

    const-string v1, "onApplyWindowInsets"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->updateCarrierTextPadding()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onAttachedToWindow()V

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/systemui/Rune;->isDeadzoneExist()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mAttached:Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexStandalone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setClickable(Z)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setFocusableInTouchMode(Z)V

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iget v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mCurrentMobileKeyboard:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mCurrentMobileKeyboard:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->updateKeyboardView()V

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsNightModeOn:Z

    if-eq v1, v0, :cond_2

    const-string v1, "KeyguardSecPinBasedInputView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "night mode changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsNightModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsNightModeOn:Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onNightModeChanged(Z)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/systemui/Rune;->isDeadzoneExist()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mAttached:Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    if-eqz p2, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->verifyPasswordAndUnlock()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v1, Lcom/android/keyguard/KeyguardSecPinBasedInputView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView$1;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a0112

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContainer:Landroid/view/ViewGroup;

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mCurrentMobileKeyboard:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/PasswordTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/PasswordTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setInputType(I)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->updateKeyboardView()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardSecPinBasedInputView$y0BPLniyUGUwJMeIMtgI_-hEl1M;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPinBasedInputView$y0BPLniyUGUwJMeIMtgI_-hEl1M;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setUserActivityListener(Lcom/android/keyguard/PasswordTextView$UserActivityListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexStandalone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardSecPinBasedInputView$uGVvKKklDr-ETwsMD1YX9nVdnFA;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPinBasedInputView$uGVvKKklDr-ETwsMD1YX9nVdnFA;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    const v0, 0x7f0a00e9

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->updateCarrierTextPadding()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->initializeBottomContainerView(I)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->isUseKeyboard()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->verifyPasswordAndUnlock()V

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_4
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onMeasure(II)V

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->measureChildren(II)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDeleteButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDeleteButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->updateRippleSize(Landroid/view/View;Landroid/graphics/drawable/RippleDrawable;)V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsImagePinLock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KeyguardSecPinBasedInputView"

    const-string v1, "The Ok button size is 0X0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a024b

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->updateRippleSize(Landroid/view/View;Landroid/graphics/drawable/RippleDrawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->updateRippleSize(Landroid/view/View;Landroid/graphics/drawable/RippleDrawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onNightModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onPause()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->isUseKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onResume(I)V

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mCurrentMobileKeyboard:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->doHapticKeyClick()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onVisibilityChanged(Landroid/view/View;I)V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mAttached:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/Rune;->isDeadzoneExist()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KeyguardSecPinBasedInputView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVisibilityChanged() Visibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07027e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const-string v2, "dead_zone_port_x1"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "dead_zone_port_x2"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "dead_zone_port_y1"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07027f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const-string v2, "dead_zone_port_x1"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "dead_zone_port_x2"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "dead_zone_port_y1"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/tsp/SemTspStateManager;->setDeadZone(Landroid/view/View;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method protected resetPasswordText(ZZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setOkButtonEnabled(Z)V

    return-void
.end method

.method protected resetState()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v0, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    check-cast v0, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->setOkButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected setOkButtonEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsPINContainerShowing:Z

    if-eqz v3, :cond_0

    nop

    move v3, v2

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsPINContainerShowing:Z

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method protected updateNumPadKeyTextView()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton0:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/SecNumPadKey;->updateDigitTextSize()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton1:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/SecNumPadKey;->updateDigitTextSize()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton2:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/SecNumPadKey;->updateDigitTextSize()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton3:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/SecNumPadKey;->updateDigitTextSize()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton4:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/SecNumPadKey;->updateDigitTextSize()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton5:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/SecNumPadKey;->updateDigitTextSize()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton6:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/SecNumPadKey;->updateDigitTextSize()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton7:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/SecNumPadKey;->updateDigitTextSize()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton8:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/SecNumPadKey;->updateDigitTextSize()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton9:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/SecNumPadKey;->updateDigitTextSize()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton0:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/SecNumPadKey;->updateKlondikeTextSize()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton1:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/SecNumPadKey;->updateKlondikeTextSize()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton2:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/SecNumPadKey;->updateKlondikeTextSize()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton3:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/SecNumPadKey;->updateKlondikeTextSize()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton4:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/SecNumPadKey;->updateKlondikeTextSize()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton5:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/SecNumPadKey;->updateKlondikeTextSize()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton6:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/SecNumPadKey;->updateKlondikeTextSize()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton7:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/SecNumPadKey;->updateKlondikeTextSize()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton8:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/SecNumPadKey;->updateKlondikeTextSize()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton9:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/SecNumPadKey;->updateKlondikeTextSize()V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsImagePinLock:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    instance-of v0, v0, Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070315

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public updateStyle(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->initializeBottomContainerView(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton0:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton1:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton2:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton3:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton4:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton5:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton6:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton7:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton8:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mButton9:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecNumPadKey;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/SecNumPadKey;->updateViewStyle(I)V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mIsImagePinLock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDeleteButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mOkButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mDeleteButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void
.end method
