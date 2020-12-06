.class public Lcom/android/keyguard/KeyguardSimPukTMOView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSimPukTMOView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPukTMOView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/KeyguardSimPukTMOView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimPukTMOView$1;-><init>(Lcom/android/keyguard/KeyguardSimPukTMOView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSimPukTMOView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->updateEmergencyCallButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSimPukTMOView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private isInCall(Landroid/telecom/TelecomManager;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "KeyguardSimPukTMOView"

    const-string v1, "isInCall : TelecomManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/keyguard/KeyguardSimPukTMOView;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->isInCall(Landroid/telecom/TelecomManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->resumeCall(Landroid/telecom/TelecomManager;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$1(Lcom/android/keyguard/KeyguardSimPukTMOView;Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "tel"

    const-string v2, "911"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private resumeCall(Landroid/telecom/TelecomManager;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "KeyguardSimPukTMOView"

    const-string/jumbo v1, "resumeCall : TelecomManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateEmergencyCallButton()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0x7f0a018e

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPukTMOView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardSimPukTMOView;->isInCall(Landroid/telecom/TelecomManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x10404e0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_0
    const v2, 0x7f12060c

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public needsInput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a02ac

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12073b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12073a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10402f5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v2, 0x7f0a018e

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSimPukTMOView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    const v3, 0x7f12060c

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_2
    const v3, 0x7f120739

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    :goto_0
    new-instance v3, Lcom/android/keyguard/-$$Lambda$KeyguardSimPukTMOView$C9fsqbC3UeYrf3DMkOimjNyRvvo;

    invoke-direct {v3, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSimPukTMOView$C9fsqbC3UeYrf3DMkOimjNyRvvo;-><init>(Lcom/android/keyguard/KeyguardSimPukTMOView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v3, 0x7f0a01cf

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSimPukTMOView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    if-eqz v1, :cond_4

    if-eqz v3, :cond_5

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    const v4, 0x7f12073c

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    new-instance v4, Lcom/android/keyguard/-$$Lambda$KeyguardSimPukTMOView$sa4jPBHjF-HRWN7hmYP8sgmBfxo;

    invoke-direct {v4, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSimPukTMOView$sa4jPBHjF-HRWN7hmYP8sgmBfxo;-><init>(Lcom/android/keyguard/KeyguardSimPukTMOView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume(I)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;I)V
    .locals 0

    return-void
.end method

.method public showPromptReason(I)V
    .locals 0

    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
