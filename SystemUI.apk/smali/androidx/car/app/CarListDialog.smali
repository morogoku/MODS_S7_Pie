.class public Landroidx/car/app/CarListDialog;
.super Landroid/app/Dialog;
.source "CarListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/CarListDialog$Builder;,
        Landroidx/car/app/CarListDialog$DialogSubSection;
    }
.end annotation


# instance fields
.field private mAdapter:Landroidx/car/widget/ListItemAdapter;

.field private mDismissOnTouchOutside:Z

.field private final mInitialPosition:I

.field private final mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mList:Landroidx/car/widget/PagedListView;

.field private mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

.field private final mTitle:Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mTitleElevation:F

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static synthetic access$000(Landroidx/car/app/CarListDialog;)V
    .locals 0

    invoke-direct {p0}, Landroidx/car/app/CarListDialog;->updateScrollbar()V

    return-void
.end method

.method static synthetic access$100(Landroidx/car/app/CarListDialog;)Landroidx/car/widget/PagedListView;
    .locals 1

    iget-object v0, p0, Landroidx/car/app/CarListDialog;->mList:Landroidx/car/widget/PagedListView;

    return-object v0
.end method

.method static synthetic access$700(Landroidx/car/app/CarListDialog;)V
    .locals 0

    invoke-direct {p0}, Landroidx/car/app/CarListDialog;->removeTitleElevationWithAnimation()V

    return-void
.end method

.method static synthetic access$800(Landroidx/car/app/CarListDialog;)F
    .locals 1

    iget v0, p0, Landroidx/car/app/CarListDialog;->mTitleElevation:F

    return v0
.end method

.method static synthetic access$900(Landroidx/car/app/CarListDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroidx/car/app/CarListDialog;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleTouchOutside()V
    .locals 1

    iget-boolean v0, p0, Landroidx/car/app/CarListDialog;->mDismissOnTouchOutside:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/car/app/CarListDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private initializeList()V
    .locals 2

    invoke-virtual {p0}, Landroidx/car/app/CarListDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Landroidx/car/R$id;->list:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/car/widget/PagedListView;

    iput-object v0, p0, Landroidx/car/app/CarListDialog;->mList:Landroidx/car/widget/PagedListView;

    iget-object v0, p0, Landroidx/car/app/CarListDialog;->mList:Landroidx/car/widget/PagedListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/car/widget/PagedListView;->setMaxPages(I)V

    iget-object v0, p0, Landroidx/car/app/CarListDialog;->mList:Landroidx/car/widget/PagedListView;

    iget-object v1, p0, Landroidx/car/app/CarListDialog;->mAdapter:Landroidx/car/widget/ListItemAdapter;

    invoke-virtual {v0, v1}, Landroidx/car/widget/PagedListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Landroidx/car/app/CarListDialog;->mList:Landroidx/car/widget/PagedListView;

    iget-object v1, p0, Landroidx/car/app/CarListDialog;->mAdapter:Landroidx/car/widget/ListItemAdapter;

    invoke-virtual {v0, v1}, Landroidx/car/widget/PagedListView;->setDividerVisibilityManager(Landroidx/car/widget/PagedListView$DividerVisibilityManager;)V

    iget v0, p0, Landroidx/car/app/CarListDialog;->mInitialPosition:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/car/app/CarListDialog;->mList:Landroidx/car/widget/PagedListView;

    iget v1, p0, Landroidx/car/app/CarListDialog;->mInitialPosition:I

    invoke-virtual {v0, v1}, Landroidx/car/widget/PagedListView;->snapToPosition(I)V

    :cond_0
    iget-object v0, p0, Landroidx/car/app/CarListDialog;->mList:Landroidx/car/widget/PagedListView;

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroidx/car/app/CarListDialog$3;

    invoke-direct {v1, p0}, Landroidx/car/app/CarListDialog$3;-><init>(Landroidx/car/app/CarListDialog;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Landroidx/car/app/CarListDialog;->mList:Landroidx/car/widget/PagedListView;

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/CarListDialog;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private initializeScrollbar()V
    .locals 2

    invoke-virtual {p0}, Landroidx/car/app/CarListDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Landroidx/car/R$id;->scrollbar:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/car/widget/PagedScrollBarView;

    iput-object v0, p0, Landroidx/car/app/CarListDialog;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    iget-object v0, p0, Landroidx/car/app/CarListDialog;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/car/widget/PagedScrollBarView;->setDayNightStyle(I)V

    iget-object v0, p0, Landroidx/car/app/CarListDialog;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    new-instance v1, Landroidx/car/app/CarListDialog$4;

    invoke-direct {v1, p0}, Landroidx/car/app/CarListDialog$4;-><init>(Landroidx/car/app/CarListDialog;)V

    invoke-virtual {v0, v1}, Landroidx/car/widget/PagedScrollBarView;->setPaginationListener(Landroidx/car/widget/PagedScrollBarView$PaginationListener;)V

    return-void
.end method

.method private initializeTitle()V
    .locals 2

    invoke-virtual {p0}, Landroidx/car/app/CarListDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Landroidx/car/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/car/app/CarListDialog;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/car/app/CarListDialog;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/car/app/CarListDialog;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/car/app/CarListDialog;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/car/app/CarListDialog;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private initializeTitleElevationListener()V
    .locals 2

    iget-object v0, p0, Landroidx/car/app/CarListDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/car/app/CarListDialog;->mList:Landroidx/car/widget/PagedListView;

    new-instance v1, Landroidx/car/app/CarListDialog$2;

    invoke-direct {v1, p0}, Landroidx/car/app/CarListDialog$2;-><init>(Landroidx/car/app/CarListDialog;)V

    invoke-virtual {v0, v1}, Landroidx/car/widget/PagedListView;->setOnScrollListener(Landroidx/car/widget/PagedListView$OnScrollListener;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$5(Landroidx/car/app/CarListDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Landroidx/car/app/CarListDialog;->handleTouchOutside()V

    return-void
.end method

.method public static synthetic lambda$removeTitleElevationWithAnimation$6(Landroidx/car/app/CarListDialog;Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Landroidx/car/app/CarListDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElevation(F)V

    return-void
.end method

.method private removeTitleElevationWithAnimation()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Landroidx/car/app/CarListDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getElevation()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    nop

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroidx/car/app/-$$Lambda$CarListDialog$KAhuZjWgMQngl5DS04gqTCRRVSs;

    invoke-direct {v2, p0}, Landroidx/car/app/-$$Lambda$CarListDialog$KAhuZjWgMQngl5DS04gqTCRRVSs;-><init>(Landroidx/car/app/CarListDialog;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateScrollbar()V
    .locals 8

    iget-object v0, p0, Landroidx/car/app/CarListDialog;->mList:Landroidx/car/widget/PagedListView;

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/CarListDialog;->mList:Landroidx/car/widget/PagedListView;

    invoke-virtual {v1}, Landroidx/car/widget/PagedListView;->isAtStart()Z

    move-result v1

    iget-object v2, p0, Landroidx/car/app/CarListDialog;->mList:Landroidx/car/widget/PagedListView;

    invoke-virtual {v2}, Landroidx/car/widget/PagedListView;->isAtEnd()Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroidx/car/app/CarListDialog;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroidx/car/widget/PagedScrollBarView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v3, p0, Landroidx/car/app/CarListDialog;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/car/widget/PagedScrollBarView;->setVisibility(I)V

    iget-object v3, p0, Landroidx/car/app/CarListDialog;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    xor-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Landroidx/car/widget/PagedScrollBarView;->setUpEnabled(Z)V

    iget-object v3, p0, Landroidx/car/app/CarListDialog;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    xor-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Landroidx/car/widget/PagedScrollBarView;->setDownEnabled(Z)V

    iget-object v3, p0, Landroidx/car/app/CarListDialog;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v5

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v6

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Landroidx/car/widget/PagedScrollBarView;->setParameters(IIIZ)V

    invoke-virtual {p0}, Landroidx/car/app/CarListDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/car/app/CarListDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Landroidx/car/R$layout;->car_list_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    sget v2, Landroidx/car/R$id;->container:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroidx/car/app/-$$Lambda$CarListDialog$daT-5_WueWAoWsgffsRUNY0qjiM;

    invoke-direct {v3, p0}, Landroidx/car/app/-$$Lambda$CarListDialog$daT-5_WueWAoWsgffsRUNY0qjiM;-><init>(Landroidx/car/app/CarListDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Landroidx/car/app/CarListDialog;->initializeTitle()V

    invoke-direct {p0}, Landroidx/car/app/CarListDialog;->initializeList()V

    invoke-direct {p0}, Landroidx/car/app/CarListDialog;->initializeScrollbar()V

    invoke-direct {p0}, Landroidx/car/app/CarListDialog;->initializeTitleElevationListener()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    iget-object v0, p0, Landroidx/car/app/CarListDialog;->mList:Landroidx/car/widget/PagedListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/car/app/CarListDialog;->mList:Landroidx/car/widget/PagedListView;

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/CarListDialog;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iput-boolean p1, p0, Landroidx/car/app/CarListDialog;->mDismissOnTouchOutside:Z

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Title should only be set from the Builder"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
