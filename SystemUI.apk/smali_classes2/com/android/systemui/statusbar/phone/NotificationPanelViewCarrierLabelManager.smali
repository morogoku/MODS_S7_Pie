.class public Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;
.super Ljava/lang/Object;
.source "NotificationPanelViewCarrierLabelManager.java"


# instance fields
.field private mCarrierLabel:Landroid/widget/TextView;

.field private mCarrierLabelSlot1:Landroid/view/View;

.field private mCarrierLabelSlot2:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mInsetNavigationBarBottomHeight:I

.field private mLastDensityDpi:I

.field private mLastOrientation:I

.field private mLastSemMobileKeyboardCovered:I

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mLastDensityDpi:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mLastOrientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mLastSemMobileKeyboardCovered:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mInsetNavigationBarBottomHeight:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v1, 0x7f0a039a

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabel:Landroid/widget/TextView;

    return-void
.end method

.method private getDefaultCarrierLabelHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$onConfigurationChanged$0(Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->relayoutCarrierLabel()V

    return-void
.end method

.method public static synthetic lambda$updateNavHeight$1(Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->relayoutCarrierLabel()V

    return-void
.end method

.method private relayoutCarrierLabel()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070501

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v0, "ZVV"

    sget-object v1, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->updateCarrierLabelVisibility()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->getDefaultCarrierLabelHeight()I

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mInsetNavigationBarBottomHeight:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabel:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mInsetNavigationBarBottomHeight:I

    invoke-virtual {v1, v2, v2, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->setCarrierLabel(Landroid/widget/TextView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabel:Landroid/widget/TextView;

    return-void
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "NotificationPanelViewCarrierLabelManager"

    const-string v1, "Error to get CarrierLabel notification_panel_carrier_label on NotificationPanelView!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->relayoutCarrierLabel()V

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabel:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->setCarrierLabel(Landroid/widget/TextView;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mLastOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mLastDensityDpi:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mLastSemMobileKeyboardCovered:I

    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mLastOrientation:I

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mLastDensityDpi:I

    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mLastSemMobileKeyboardCovered:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabel:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewCarrierLabelManager$FhY90leEq1s1FM1qIWa68G9KSKc;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewCarrierLabelManager$FhY90leEq1s1FM1qIWa68G9KSKc;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setCarrierLabelSlot1(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabelSlot1:Landroid/view/View;

    return-void
.end method

.method public setCarrierLabelSlot2(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabelSlot2:Landroid/view/View;

    return-void
.end method

.method public updateCarrierLabelAlphaAndVisibility(F)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v0

    const v3, 0x3e4ccccd    # 0.2f

    sub-float/2addr v2, v3

    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    const-wide v5, 0x400921fa00000000L    # 3.141590118408203

    sub-float/2addr v1, v2

    float-to-double v0, v1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v0, v5, v0

    mul-double/2addr v3, v0

    sub-double/2addr v5, v3

    double-to-float v0, v5

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    const-string v1, "ZVV"

    sget-object v3, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabelSlot1:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabelSlot2:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabelSlot1:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabelSlot2:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->updateCarrierLabelVisibility()V

    return-void
.end method

.method public updateCarrierLabelVisibility()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabel:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->needsAntiFalsing()Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mLastOrientation:I

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v5, v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getOverExpansionAmount()F

    move-result v1

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    move v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    const-string v1, "ZVV"

    sget-object v5, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v1

    if-le v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isNullLayoutCarrierLabelZVV()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabelSlot1:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabelSlot2:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mInsetNavigationBarBottomHeight:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setNaviBarHeightValueLayoutCarrierLabelZVV(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setVisibilityLayoutCarrierLabelZVV(I)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isNullLayoutCarrierLabelZVV()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setVisibilityLayoutCarrierLabelZVV(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public updateNavHeight(I)V
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mInsetNavigationBarBottomHeight:I

    if-eq v1, p1, :cond_2

    if-gtz p1, :cond_1

    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->getNavigationBarGestureEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->getNavigationBarGestureHint()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mInsetNavigationBarBottomHeight:I

    const-string v1, "NotificationPanelViewCarrierLabelManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mInsetNavigationBarBottomHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mInsetNavigationBarBottomHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;->mCarrierLabel:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewCarrierLabelManager$WZK8pY-7OgPQAJgyixX7qPUJ66A;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationPanelViewCarrierLabelManager$WZK8pY-7OgPQAJgyixX7qPUJ66A;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewCarrierLabelManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
