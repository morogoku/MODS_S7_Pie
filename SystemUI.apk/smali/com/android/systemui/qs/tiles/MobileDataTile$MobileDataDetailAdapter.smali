.class final Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;
.super Ljava/lang/Object;
.source "MobileDataTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MobileDataDetailAdapter"
.end annotation


# instance fields
.field private mSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Lcom/android/systemui/qs/tiles/MobileDataTile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    return-void
.end method

.method private getSummary(Z)Ljava/lang/String;
    .locals 2

    const v0, 0x7f120a65

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_MOBILE_DATA_OFF_POPUP:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_ATT_POPUP:Z

    if-eqz v1, :cond_0

    const v0, 0x7f1208b0

    goto :goto_2

    :cond_0
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_DCM_POPUP:Z

    if-eqz v1, :cond_1

    const v0, 0x7f1208b1

    goto :goto_2

    :cond_1
    const v0, 0x7f1208af

    goto :goto_2

    :cond_2
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_MOBILE_DATA_ON_OFF_POPUP_FOR_KOR:Z

    if-eqz v1, :cond_8

    if-eqz p1, :cond_5

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_LGT_POPUP:Z

    if-eqz v1, :cond_3

    const v1, 0x7f1208b4

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_KTT_POPUP:Z

    if-eqz v1, :cond_4

    const v1, 0x7f1208b3

    goto :goto_0

    :cond_4
    const v1, 0x7f1208b2

    :goto_0
    move v0, v1

    goto :goto_2

    :cond_5
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_LGT_POPUP:Z

    if-eqz v1, :cond_6

    const v1, 0x7f1208ba

    goto :goto_1

    :cond_6
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_IS_KTT_POPUP:Z

    if-eqz v1, :cond_7

    const v1, 0x7f1208b9

    goto :goto_1

    :cond_7
    const v1, 0x7f1208b8

    :goto_1
    move v0, v1

    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$3100(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic lambda$setToggleState$0(Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->setToggleState(Z)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1600(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d018e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0316

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$100(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->getSummary(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x73

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1200(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1300(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120a38

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1400(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120a66

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1500(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setToggleState(Z)V
    .locals 3

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isMobileDataTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1700(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->fireToggleStateChanged(Z)V

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1800(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->fireToggleStateChanged(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1900(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2100(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2200(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2300(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2400(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_KOREA_POPUP:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2500(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isMobileDataConnectionPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2600(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2700(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$MobileDataTile$MobileDataDetailAdapter$V8IhyI9_v3vUy2OXi2923Tz354g;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$MobileDataTile$MobileDataDetailAdapter$V8IhyI9_v3vUy2OXi2923Tz354g;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->fireToggleStateChanged(Z)V

    return-void

    :cond_3
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_MOBILE_DATA_ON_OFF_POPUP_FOR_KOR:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1200(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2800(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    xor-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2900(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->fireToggleStateChanged(Z)V

    return-void

    :cond_4
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_MOBILE_DATA_NOT_DISABLE_VOLTE_CALL:Z

    if-eqz v0, :cond_5

    const-class v0, Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SystemUIImsManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/SystemUIImsManager;->isVolteEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$3000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1208be

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->fireToggleStateChanged(Z)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$100(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->fireToggleStateChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mSummary:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->getSummary(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
