.class public Lcom/android/keyguard/KeyguardFMMView;
.super Lcom/android/keyguard/KeyguardSecPINView;
.source "KeyguardFMMView.java"


# instance fields
.field private mBottomView:Landroid/widget/LinearLayout;

.field private mCallButton:Lcom/android/systemui/widget/SystemUIButton;

.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field private mContactArea:Landroid/view/ViewGroup;

.field private mCurrentOrientation:I

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field private mFMMContainer:Landroid/widget/LinearLayout;

.field private mIsVoiceCapacity:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mMessageArea:Landroid/widget/LinearLayout;

.field private mMessageAreaSpace:Landroid/view/View;

.field private mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

.field private mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

.field private mTitle:Lcom/android/systemui/widget/SystemUITextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardFMMView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mBottomView:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/keyguard/KeyguardFMMView;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->doHapticKeyClick()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->verifyPasswordAndUnlock()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setFMMInfo$1(Lcom/android/keyguard/KeyguardFMMView;Ljava/lang/String;Landroid/view/View;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    const-string v1, "KeyguardFMMView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "click call button : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardFMMView;->mIsVoiceCapacity:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KeyguardFMMView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find the component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static synthetic lambda$setFMMInfo$2(Lcom/android/keyguard/KeyguardFMMView;Landroid/view/View;)V
    .locals 4

    :try_start_0
    const-string v0, "KeyguardFMMView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click call button : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mIsVoiceCapacity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyguardFMMView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find the component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static synthetic lambda$verifyPasswordAndUnlock$3(Lcom/android/keyguard/KeyguardFMMView;IZI)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardFMMView;->setPasswordEntryInputEnabled(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/keyguard/KeyguardFMMView;->onPasswordChecked(IZIZ)V

    return-void
.end method

.method private setFMMInfo()V
    .locals 4

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getFMMMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getFMMPhone()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "\\r\\n|\\r|\\n"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    new-instance v3, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUITextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUIButton;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mIsVoiceCapacity:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    new-instance v3, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$7cVvDTXsTJO78HtZjkZay45j_XE;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$7cVvDTXsTJO78HtZjkZay45j_XE;-><init>(Lcom/android/keyguard/KeyguardFMMView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    new-instance v3, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$LkOx4HaOTfU6URHkmOcnFtd4YG8;

    invoke-direct {v3, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$LkOx4HaOTfU6URHkmOcnFtd4YG8;-><init>(Lcom/android/keyguard/KeyguardFMMView;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateLayout(Landroid/content/res/Configuration;)V
    .locals 12

    iget v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mCurrentOrientation:I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mMessageArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mFMMContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mContactArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mTitle:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mEcaView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardFMMView;->mContactArea:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mTitle:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v6}, Lcom/android/systemui/widget/SystemUITextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v7}, Lcom/android/systemui/widget/SystemUITextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexStandalone()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070294

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07028c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v8, p0, Lcom/android/keyguard/KeyguardFMMView;->mFMMContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07028e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07028d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v8, v4, v9, v4, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070290

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07028f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v8, p0, Lcom/android/keyguard/KeyguardFMMView;->mEcaView:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0702cd

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0702d5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0702d0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v8, p0, Lcom/android/keyguard/KeyguardFMMView;->mFMMContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_0
    iget-object v8, p0, Lcom/android/keyguard/KeyguardFMMView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/keyguard/KeyguardFMMView;->mContactArea:Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/keyguard/KeyguardFMMView;->mTitle:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v8, v6}, Lcom/android/systemui/widget/SystemUITextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v8, v7}, Lcom/android/systemui/widget/SystemUITextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v8, p0, Lcom/android/keyguard/KeyguardFMMView;->mCurrentOrientation:I

    if-ne v8, v3, :cond_3

    iget-object v8, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/util/SettingsHelper;->isEasyModeOn()Z

    move-result v10

    if-eqz v10, :cond_2

    const v10, 0x7f0b0032

    goto :goto_1

    :cond_2
    const v10, 0x7f0b0031

    :goto_1
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/widget/SystemUITextView;->setMaxLines(I)V

    iget-object v8, p0, Lcom/android/keyguard/KeyguardFMMView;->mFMMContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_2

    :cond_3
    iget v8, p0, Lcom/android/keyguard/KeyguardFMMView;->mCurrentOrientation:I

    if-ne v8, v1, :cond_4

    iget-object v8, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0030

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/widget/SystemUITextView;->setMaxLines(I)V

    iget-object v8, p0, Lcom/android/keyguard/KeyguardFMMView;->mFMMContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_4
    :goto_2
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mContactArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mMessageAreaSpace:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mContactArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v5}, Lcom/android/systemui/widget/SystemUITextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mCurrentOrientation:I

    if-ne v6, v3, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mMessageAreaSpace:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_3

    :cond_5
    iget v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mCurrentOrientation:I

    if-ne v2, v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mMessageAreaSpace:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1}, Lcom/android/systemui/widget/SystemUITextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setMaxWidth(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/widget/SystemUITextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mContactArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050367

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/util/DeviceState;->getDeviceResolutionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_b

    if-lez v0, :cond_a

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v0

    goto :goto_4

    :cond_8
    move v2, v0

    :goto_4
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_9

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v0

    goto :goto_5

    :cond_9
    move v3, v0

    :goto_5
    goto :goto_6

    :cond_a
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0707c2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v3, v5

    :goto_6
    iget-object v5, p0, Lcom/android/keyguard/KeyguardFMMView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v5, v2, v4, v3, v4}, Lcom/android/keyguard/CarrierText;->setPadding(IIII)V

    :cond_b
    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    const v0, 0x7f0a01c4

    return v0
.end method

.method protected getSecurityViewId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    const v0, 0x7f1205b8

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    const-string v0, "KeyguardFMMView"

    const-string v1, "onApplyWindowInsets"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardFMMView;->updateLayout(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecPINView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecPINView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardFMMView;->updateLayout(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mIsVoiceCapacity:Z

    const v0, 0x7f0a00b5

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mBottomView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0275

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mTitle:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a0273

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a0274

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Lcom/android/systemui/widget/SystemUITextView;

    const v0, 0x7f0a0272

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Lcom/android/systemui/widget/SystemUIButton;

    const v0, 0x7f0a0271

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mFMMContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01c5

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mContactArea:Landroid/view/ViewGroup;

    const v0, 0x7f0a01c6

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mMessageArea:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01c7

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mMessageAreaSpace:Landroid/view/View;

    const v0, 0x7f0a00e9

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPINView;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mTitle:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mTitle:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setSelected(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMView;->setFMMInfo()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardFMMView;->updateLayout(Landroid/content/res/Configuration;)V

    const v0, 0x7f0a024b

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$RGfbKtAO-kpqunZjFnjF0LpcMgM;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$RGfbKtAO-kpqunZjFnjF0LpcMgM;-><init>(Lcom/android/keyguard/KeyguardFMMView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected onPasswordChecked(IZIZ)V
    .locals 6

    const-string v0, "KeyguardFMMView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPatternChecked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;I)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.Keyguard.UNLOCK_FMM_ALERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x1000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.SEND_SMS"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "KeyguardFMMView"

    const-string/jumbo v3, "send Broadcast : com.samsung.Keyguard.UNLOCK_FMM_ALERT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2, v0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    :goto_0
    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    if-eqz p4, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/KeyguardFMMView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->addFailedFMMUnlockAttempt(I)I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardFMMView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedFMMUnlockAttempt(I)I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    const/16 v4, 0x9

    if-le v3, v4, :cond_3

    :cond_2
    const-class v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v5, 0x7530

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardFMMView;->handleAttemptLockout(J)V

    :cond_3
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getWrongPasswordStringId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v3}, Lcom/android/keyguard/SecurityMessageDisplay;->displayFailedAnimation()V

    :cond_4
    :goto_1
    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardFMMView;->resetPasswordText(ZZ)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPINView;->onPause()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMView;->setFMMInfo()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    if-eqz p1, :cond_2

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardFMMView;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v3, 0x7f1206f2

    invoke-interface {v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    :goto_0
    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104029c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected resetState()V
    .locals 4

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPINView;->resetState()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMView;->setFMMInfo()V

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardFMMView;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v3, 0x7f1206f2

    invoke-interface {v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    :goto_0
    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104029c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardFMMView;->setPasswordEntryInputEnabled(Z)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardFMMView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardFMMView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v3, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardFMMView;->setPasswordEntryInputEnabled(Z)V

    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/android/keyguard/KeyguardFMMView;->onPasswordChecked(IZIZ)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v4, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$wwFZp8ck0SOmUSmuUDGjIQ62mRI;

    invoke-direct {v4, p0, v1}, Lcom/android/keyguard/-$$Lambda$KeyguardFMMView$wwFZp8ck0SOmUSmuUDGjIQ62mRI;-><init>(Lcom/android/keyguard/KeyguardFMMView;I)V

    invoke-static {v3, v2, v0, v1, v4}, Lcom/android/internal/widget/LockPatternChecker;->checkRemoteLockPassword(Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method
