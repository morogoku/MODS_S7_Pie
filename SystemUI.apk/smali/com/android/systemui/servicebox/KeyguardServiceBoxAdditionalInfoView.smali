.class public Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;
.super Landroid/widget/LinearLayout;
.source "KeyguardServiceBoxAdditionalInfoView.java"


# instance fields
.field private mCurrentRemoteViews:Landroid/widget/RemoteViews;

.field private mCurrentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private isLandscape()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public setAdditionalInfoView(Landroid/widget/RemoteViews;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->mCurrentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->mCurrentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->mCurrentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->mCurrentView:Landroid/view/View;

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->mCurrentRemoteViews:Landroid/widget/RemoteViews;

    return-void
.end method

.method public updateAdditionInfoView()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->mCurrentRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->mCurrentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->mCurrentRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->mCurrentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->mCurrentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public updateVisibility()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->mCurrentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxAdditionalInfoView;->setVisibility(I)V

    :cond_2
    return-void
.end method
