.class public Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SecGlobalActionsDialogBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionViewAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mViewModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->mViewModelList:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setVerticalSpacing()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/util/SystemConditions;->IS_TABLET_DEVICE:Lcom/samsung/android/globalactionsdlx/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050234

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setVerticalSpacing(I)V

    goto :goto_39

    :cond_2c
    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;

    # getter for: Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mItemVerticalSpacingPort:I
    invoke-static {v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->access$600(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setVerticalSpacing(I)V

    :cond_39
    :goto_39
    return-void
.end method


# virtual methods
.method public addItem(Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    new-instance v8, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;

    iget-object v4, v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;

    # getter for: Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mIsVoiceAssistantMode:Z
    invoke-static {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->access$300(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)Z

    move-result v5

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;

    # getter for: Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mIsWhiteTheme:Z
    invoke-static {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->access$400(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)Z

    move-result v6

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;

    # getter for: Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mViewStateController:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;
    invoke-static {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->access$500(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)Lcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;

    move-result-object v7

    move-object v0, v8

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;Landroid/view/ViewGroup;Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;ZZLcom/samsung/android/globalactionsdlx/presentation/view/ViewStateController;)V

    if-nez p2, :cond_2e

    invoke-virtual {v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->inflateView()Landroid/view/View;

    move-result-object p2

    :cond_2e
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->setViewAttrs(Landroid/view/View;Z)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/globalactionsdlx/presentation/view/GlobalActionItemView;->setViewIndex(I)V

    return-object p2
.end method

.method public resetItems()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public updateNumColumns()V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-ge v0, v2, :cond_13

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;

    iget-object v3, v3, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setNumColumns(I)V

    goto :goto_1a

    :cond_13
    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;

    iget-object v3, v3, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v3, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setNumColumns(I)V

    :goto_1a
    if-ge v0, v2, :cond_24

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;

    iget-object v1, v1, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mLandListView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setNumColumns(I)V

    goto :goto_36

    :cond_24
    if-ne v0, v2, :cond_2e

    iget-object v2, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;

    iget-object v2, v2, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mLandListView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setNumColumns(I)V

    goto :goto_36

    :cond_2e
    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;

    iget-object v1, v1, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->mLandListView:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setNumColumns(I)V

    :goto_36
    invoke-direct {p0}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->setVerticalSpacing()V

    return-void
.end method
