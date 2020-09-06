.class public Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;
.super Ljava/lang/Object;
.source "GlobalActionItemView.java"


# instance fields
.field private final BIXBY_SETTINGS_COLOR_DARK_THEME:Ljava/lang/String;

.field private final BIXBY_SETTINGS_COLOR_WHITE_THEME:Ljava/lang/String;

.field private final LABEL_TEXT_COLOR_DEFAULT:Ljava/lang/String;

.field private final LABEL_TEXT_COLOR_WHITE_THEME:Ljava/lang/String;

.field private final LABEL_TEXT_SIZE:I

.field private final STATE_TEXT_COLOR_DEFAULT:Ljava/lang/String;

.field private final STATE_TEXT_COLOR_WHITE_THEME:Ljava/lang/String;

.field private final STATE_TEXT_SIZE:I

.field private final mContext:Landroid/content/Context;

.field private final mParent:Landroid/view/ViewGroup;

.field private final mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

.field private final mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

.field private mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

.field private final mVoiceAssistantMode:Z

.field private final mWhiteTheme:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;Landroid/view/ViewGroup;Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;ZZLcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->LABEL_TEXT_SIZE:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->STATE_TEXT_SIZE:I

    const-string v0, "#fafafa"

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->LABEL_TEXT_COLOR_DEFAULT:Ljava/lang/String;

    const-string v0, "#252525"

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->LABEL_TEXT_COLOR_WHITE_THEME:Ljava/lang/String;

    const-string v0, "#c3c3c3"

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->STATE_TEXT_COLOR_DEFAULT:Ljava/lang/String;

    const-string v0, "#757575"

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->STATE_TEXT_COLOR_WHITE_THEME:Ljava/lang/String;

    const-string v0, "#252525"

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->BIXBY_SETTINGS_COLOR_WHITE_THEME:Ljava/lang/String;

    const-string v0, "#fafafa"

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->BIXBY_SETTINGS_COLOR_DARK_THEME:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    iput-object p3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mParent:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    iput-boolean p5, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mVoiceAssistantMode:Z

    iput-boolean p6, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mWhiteTheme:Z

    iput-object p7, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

    return-void
.end method

.method private checkSingleLine(Landroid/widget/TextView;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mParent:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mParent:Landroid/view/ViewGroup;

    check-cast v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->isVerticalMode()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_19

    :cond_15
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_19
    :goto_19
    return-void
.end method

.method public static synthetic lambda$inflateView$0(Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;->getState()Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->onPress()V

    :cond_f
    return-void
.end method

.method public static synthetic lambda$inflateView$1(Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;Landroid/view/View;)Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;->getState()Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->onLongPress()V

    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$setViewAttrs$2(Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;->getState()Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->onPress()V

    :cond_f
    return-void
.end method

.method public static synthetic lambda$setViewAttrs$3(Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;Landroid/view/View;)Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;->getState()Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->onLongPress()V

    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method private setLimitTextSizeToLarge(Landroid/widget/TextView;I)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    const v0, 0x3fa66666    # 1.3f

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const v2, 0x3fa66666    # 1.3f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1e

    const v1, 0x3fa66666    # 1.3f

    :cond_1e
    const/4 v2, 0x1

    int-to-float v3, p2

    mul-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public createView(Z)Landroid/view/View;
    .registers 3

    invoke-virtual {p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->inflateView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->setViewAttrs(Landroid/view/View;Z)V

    return-object v0
.end method

.method public inflateView()Landroid/view/View;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->TOP_VIEW:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v4, "sec_global_actions_topview"

    invoke-interface {v1, v4}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_c1

    :cond_2a
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->BOTTOM_TEXT_VIEW:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    if-ne v0, v1, :cond_61

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v4, "sec_global_actions_bottomview"

    invoke-interface {v1, v4}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$GlobalActionItemView$XEyKMY8eRqssgT1Sh8-1LRWosvE;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$GlobalActionItemView$XEyKMY8eRqssgT1Sh8-1LRWosvE;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$GlobalActionItemView$UrT4HTtrKHiKnGzEJeibFL5bQro;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$GlobalActionItemView$UrT4HTtrKHiKnGzEJeibFL5bQro;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_c1

    :cond_61
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->BOTTOM_PET_VIEW:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    if-ne v0, v1, :cond_88

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v2, "sec_global_actions_bottompetview"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c1

    :cond_88
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->BOTTOM_SIMPLE_TEXT_VIEW:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    if-ne v0, v1, :cond_ac

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v2, "sec_global_actions_bottomtextview"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_c1

    :cond_ac
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v2, "sec_global_actions_item"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_c1
    return-object v0
.end method

.method public setViewAttrs(Landroid/view/View;Z)V
    .registers 10

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v1, "sec_global_actions_label"

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v2, "sec_global_actions_state"

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v3, "sec_global_actions_icon"

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_fd

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "knox_custom"

    if-ne v3, v4, :cond_56

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_a9

    :cond_56
    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bixby_settings"

    if-ne v3, v4, :cond_8f

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v4, "tw_ic_do_settings_mtrl"

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mWhiteTheme:Z

    if-eqz v4, :cond_82

    const-string v4, "#252525"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_8b

    :cond_82
    const-string v4, "#fafafa"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_8b
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a9

    :cond_8f
    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_a9
    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "grace_bottom_icon"

    if-eq v3, v4, :cond_fd

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    new-instance v3, Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$GlobalActionItemView$-f5oAqgtpREhfUdiJ1uQpn_Bulo;

    invoke-direct {v3, p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$GlobalActionItemView$-f5oAqgtpREhfUdiJ1uQpn_Bulo;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$GlobalActionItemView$Hw9irCNjevosFS0GXXmoqh_94OU;

    invoke-direct {v3, p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$GlobalActionItemView$Hw9irCNjevosFS0GXXmoqh_94OU;-><init>(Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-boolean v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mVoiceAssistantMode:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_e7

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v6, "sec_global_actions_icon_ripple"

    invoke-interface {v5, v6}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_fd

    :cond_e7
    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v6, "sec_global_actions_icon_bg_focused"

    invoke-interface {v5, v6}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_fd
    :goto_fd
    if-eqz v0, :cond_14c

    invoke-direct {p0, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->checkSingleLine(Landroid/widget/TextView;)V

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "knox_custom"

    if-ne v3, v4, :cond_11b

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_128

    :cond_11b
    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_128
    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->BOTTOM_TEXT_VIEW:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    if-eq v3, v4, :cond_14c

    iget-boolean v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mWhiteTheme:Z

    if-eqz v3, :cond_141

    const-string v3, "#252525"

    :goto_13c
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    goto :goto_144

    :cond_141
    const-string v3, "#fafafa"

    goto :goto_13c

    :goto_144
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v3, 0xf

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->setLimitTextSizeToLarge(Landroid/widget/TextView;I)V

    :cond_14c
    const/16 v3, 0xd

    if-eqz v1, :cond_1a0

    iget-object v4, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v4}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getStateLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_17e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_17e
    iget-object v4, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v4}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;->BOTTOM_TEXT_VIEW:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ViewType;

    if-eq v4, v5, :cond_1a0

    iget-boolean v4, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mWhiteTheme:Z

    if-eqz v4, :cond_197

    const-string v4, "#757575"

    :goto_192
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_19a

    :cond_197
    const-string v4, "#c3c3c3"

    goto :goto_192

    :goto_19a
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->setLimitTextSizeToLarge(Landroid/widget/TextView;I)V

    :cond_1a0
    if-eqz p2, :cond_1d2

    iget-object v4, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    const-string/jumbo v5, "sec_global_actions_description_text"

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v5}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v5, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mWhiteTheme:Z

    if-eqz v5, :cond_1c9

    const-string v5, "#757575"

    :goto_1c4
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    goto :goto_1cc

    :cond_1c9
    const-string v5, "#c3c3c3"

    goto :goto_1c4

    :goto_1cc
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->setLimitTextSizeToLarge(Landroid/widget/TextView;I)V

    :cond_1d2
    return-void
.end method

.method public setViewIndex(I)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->mViewModel:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionInfo;->setViewIndex(I)V

    return-void
.end method
