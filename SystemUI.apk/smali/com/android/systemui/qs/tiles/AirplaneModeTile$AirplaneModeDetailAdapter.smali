.class final Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;
.super Ljava/lang/Object;
.source "AirplaneModeTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/AirplaneModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AirplaneModeDetailAdapter"
.end annotation


# instance fields
.field private mSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    return-void
.end method

.method public static synthetic lambda$setToggleState$0(Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->setToggleState(Z)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

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

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->mSummary:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v0

    const v1, 0x7f120a59

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x70

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120a5a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$3300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setToggleState(Z)V
    .locals 4

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isAirplaneModeTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->fireToggleStateChanged(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1500(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isTelephonyIdle(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1600(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1700(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120127

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->fireToggleStateChanged(Z)V

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1800(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->fireToggleStateChanged(Z)V

    :cond_2
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_SKT_POPUP:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1900(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2100(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120122

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->fireToggleStateChanged(Z)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2300(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2400(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2500(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2600(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2700(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$AirplaneModeTile$AirplaneModeDetailAdapter$oVzZtMaFlXFibYRJ4FOA-oP6Hdc;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$AirplaneModeTile$AirplaneModeDetailAdapter$oVzZtMaFlXFibYRJ4FOA-oP6Hdc;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->fireToggleStateChanged(Z)V

    return-void

    :cond_4
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_OJT_POPUP:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2800(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isMultisim()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "28601"

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->getNetworkOperatorNumeric(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$2900(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$3000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120126

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$3100()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$3200(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->fireToggleStateChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$1000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)V

    return-void
.end method
