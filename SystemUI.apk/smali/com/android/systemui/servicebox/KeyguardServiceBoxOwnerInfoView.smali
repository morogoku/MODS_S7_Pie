.class public Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;
.super Lcom/android/systemui/widget/SystemUITextView;
.source "KeyguardServiceBoxOwnerInfoView.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;


# instance fields
.field private mFontScale:F

.field private mHandler:Landroid/os/Handler;

.field private final mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsShowCMAS:Z

.field private final mOwnerInfoMgr:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;

.field private final mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mFontScale:F

    new-instance v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView$1;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView$2;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const-class v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getOwnerInfoMgr(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mOwnerInfoMgr:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->sendEvent(Z)V

    return-void
.end method

.method private sendEvent(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12ce

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private setCMASIcon(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->updateCompoundVisible(Z)V

    return-void
.end method

.method private updateCMASText(I)Z
    .locals 3

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_CMAS:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-ne p1, v2, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mIsShowCMAS:Z

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mIsShowCMAS:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_PRESIDENTIAL_CMAS:Z

    if-eqz v0, :cond_1

    const v0, 0x7f120519

    goto :goto_1

    :cond_1
    const v0, 0x7f1204f3

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mOwnerInfoMgr:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;->setEnabled()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mIsShowCMAS:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->setCMASIcon(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mIsShowCMAS:Z

    return v0
.end method

.method private updateOwnerInfo(I)V
    .locals 3

    const-string v0, "KeyguardOwnerInfoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOwnerInfo(hasCMAS): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mIsShowCMAS:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->updateCMASText(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "KeyguardOwnerInfoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show CMAS on owner info space ! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->updateOwnerInfoStyle()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mOwnerInfoMgr:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;->getOwnerInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mOwnerInfoMgr:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;->setEnabled()V

    invoke-virtual {p0, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->setSelected(Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mOwnerInfoMgr:Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoMgr;->setDisabled()V

    invoke-virtual {p0, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->setSelected(Z)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->updateOwnerInfoStyle()V

    :cond_5
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->registerClockChangedCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V

    return-void
.end method

.method public onClockColorChanged()V
    .locals 2

    const-string v0, "KeyguardOwnerInfoView"

    const-string v1, "OwnerInfoView Text ColorChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->updateTextView()V

    return-void
.end method

.method public onClockPackageChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->updateTextView()V

    return-void
.end method

.method public onClockStyleChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->updateTextView()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mContext:Landroid/content/Context;

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->getFontScaleInKeyguardBoundary(Landroid/content/Context;F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mFontScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mFontScale:F

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mIsShowCMAS:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->setCMASIcon(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->unregisterClockChangedCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->updateOwnerInfo()V

    return-void
.end method

.method public resetMarqueeEffect()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->sendEvent(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->setSelected(Z)V

    return-void
.end method

.method public updateOwnerInfo()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->updateOwnerInfo(I)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->updateFontSizeInKeyguardBoundary()V

    return-void
.end method

.method public updateOwnerInfo(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->updateOwnerInfo(I)V

    return-void
.end method

.method public updateOwnerInfoStyle()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070249

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method protected updateTextView()V
    .locals 6

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mUpdateFlag:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->isThemeClockEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mUpdateFlag:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mAdaptiveColorMain:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->updateTextView()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->semClearAllTextEffect()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getDateColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginShadowColorId:I

    iget v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mUpdateFlag:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v0, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColorId:I

    const-string v1, "KeyguardOwnerInfoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shadowColorResId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->getShadowRadius()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->getShadowDx()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->getShadowDy()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->setShadowLayer(FFFI)V

    :cond_4
    return-void
.end method
