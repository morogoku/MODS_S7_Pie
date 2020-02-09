.class public Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;
.super Landroid/widget/FrameLayout;
.source "CustomSwitchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView$OnCheckedChangeListener;,
        Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView$InterceptOnClickCallback;
    }
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mInterceptOnClickCallback:Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView$InterceptOnClickCallback;

.field private mOnCheckedChangeListener:Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView$OnCheckedChangeListener;

.field private mSummaryView:Landroid/widget/TextView;

.field private mSwitchButton:Landroid/widget/Switch;

.field private mSwitchViewBody:Landroid/widget/LinearLayout;

.field private mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mDescription:Ljava/lang/String;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x1

    const v2, 0x7f0d0221

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v2, 0x7f0a05be

    invoke-virtual {p0, v2}, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mTitleView:Landroid/widget/TextView;

    const v2, 0x7f0a058e

    invoke-virtual {p0, v2}, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mSummaryView:Landroid/widget/TextView;

    const v2, 0x7f0a0593

    invoke-virtual {p0, v2}, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mSwitchButton:Landroid/widget/Switch;

    const v2, 0x7f0a0598

    invoke-virtual {p0, v2}, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mSwitchViewBody:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/android/systemui/R$styleable;->CustomSwitchView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mTitle:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mDescription:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mSummaryView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mDescription:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mDescription:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120be4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mTitleView:Landroid/widget/TextView;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mSummaryView:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->setClickable(Z)V

    const v1, 0x7f080629

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->setBackgroundResource(I)V

    invoke-virtual {p0, p0}, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mSwitchButton:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mDescription:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mSummaryView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const v1, 0x7f120be5

    goto :goto_0

    :cond_0
    const v1, 0x7f120be4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mOnCheckedChangeListener:Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView$OnCheckedChangeListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mOnCheckedChangeListener:Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView$OnCheckedChangeListener;

    invoke-interface {v0, p0, p2}, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView$OnCheckedChangeListener;->onCheckedChanged(Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;Z)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mInterceptOnClickCallback:Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView$InterceptOnClickCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mInterceptOnClickCallback:Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView$InterceptOnClickCallback;

    invoke-interface {v0, p0}, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView$InterceptOnClickCallback;->onClick(Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mSwitchButton:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mSwitchButton:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3eb33333    # 0.35f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->mOnCheckedChangeListener:Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView$OnCheckedChangeListener;

    return-void
.end method
