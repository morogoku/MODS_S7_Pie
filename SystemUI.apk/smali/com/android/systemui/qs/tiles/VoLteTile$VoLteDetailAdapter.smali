.class final Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;
.super Ljava/lang/Object;
.source "VoLteTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/VoLteTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VoLteDetailAdapter"
.end annotation


# instance fields
.field private mSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VoLteTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/VoLteTile;Lcom/android/systemui/qs/tiles/VoLteTile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$1600(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;

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

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->mSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f120aa8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1391

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$1400(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$1500(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setToggleState(Z)V
    .locals 5

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isVoLteTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$1700(Lcom/android/systemui/qs/tiles/VoLteTile;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->fireToggleStateChanged(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$1800(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$1900(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120c8c

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->fireToggleStateChanged(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$2000(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->fireToggleStateChanged(Z)V

    return-void

    :cond_2
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_VOLTE_CHECK_OPERATOR:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/systemui/Rune;->supportDualIms()Z

    move-result v0

    const v1, 0x7f120c90

    const v3, 0x7f120c8e

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$2100(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/util/SystemUIImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SystemUIImsManager;->getVoLTEEnableState()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$2100(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/util/SystemUIImsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SystemUIImsManager;->getVoLTESupportedSIM()I

    move-result v4

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$2200(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/VoLteTile;->fireToggleStateChanged(Z)V

    return-void

    :cond_3
    if-nez v4, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$2300(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/VoLteTile;->fireToggleStateChanged(Z)V

    return-void

    :cond_4
    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$2400(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$2500(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->fireToggleStateChanged(Z)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$2600(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$2700(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->fireToggleStateChanged(Z)V

    return-void

    :cond_7
    :goto_0
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$2800(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/VoLteTile;->fireToggleStateChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$VoLteDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/VoLteTile;->setEnabled(Z)V

    return-void
.end method
