.class public Lcom/android/systemui/power/UnintentionalLcdOnView;
.super Landroid/widget/LinearLayout;
.source "UnintentionalLcdOnView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnViewClickListener;
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnViewClickListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/power/UnintentionalLcdOnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/power/UnintentionalLcdOnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/systemui/power/UnintentionalLcdOnView;Landroid/view/View;)V
    .locals 5

    const-string v0, "PowerUI.UnintentionalLcdOnView"

    const-string/jumbo v1, "onclick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    iget-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.KSO_CLICK_OK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mClickListener:Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnViewClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mClickListener:Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnViewClickListener;

    invoke-interface {v1}, Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnViewClickListener;->onUnintentionalLcdOnViewClick()V

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mHandler:Landroid/os/Handler;

    const v0, 0x7f0a060e

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a060c

    invoke-virtual {p0, v1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120c5c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120c59

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120c57

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120c58

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    new-instance v3, Lcom/android/systemui/power/-$$Lambda$UnintentionalLcdOnView$9UZDfFRNpCcbyMgiEw-6JJIk98o;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/-$$Lambda$UnintentionalLcdOnView$9UZDfFRNpCcbyMgiEw-6JJIk98o;-><init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public regUnintentionalLcdOnViewClickListner(Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnViewClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mClickListener:Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnViewClickListener;

    return-void
.end method

.method public unRegUnintentionalLcdOnViewClickListner(Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnViewClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mClickListener:Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnViewClickListener;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mClickListener:Lcom/android/systemui/power/UnintentionalLcdOnView$UnintentionalLcdOnViewClickListener;

    :cond_0
    return-void
.end method
