.class public Landroidx/car/drawer/CarDrawerController;
.super Ljava/lang/Object;
.source "CarDrawerController.java"


# static fields
.field private static final DRILL_DOWN_ANIM:I
    .annotation build Landroid/support/annotation/AnimRes;
    .end annotation
.end field

.field private static final NAVIGATE_UP_ANIM:I
    .annotation build Landroid/support/annotation/AnimRes;
    .end annotation
.end field


# instance fields
.field private final mAdapterStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/car/drawer/CarDrawerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private final mDrawerList:Landroidx/car/widget/PagedListView;

.field private final mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

.field private final mProgressBar:Landroid/widget/ProgressBar;

.field private final mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/car/R$anim;->fade_in_trans_right_layout_anim:I

    sput v0, Landroidx/car/drawer/CarDrawerController;->DRILL_DOWN_ANIM:I

    sget v0, Landroidx/car/R$anim;->fade_in_trans_left_layout_anim:I

    sput v0, Landroidx/car/drawer/CarDrawerController;->NAVIGATE_UP_ANIM:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/app/ActionBarDrawerToggle;)V
    .locals 2
    .param p1    # Landroid/support/v4/widget/DrawerLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/app/ActionBarDrawerToggle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mAdapterStack:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/car/drawer/CarDrawerController;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    iput-object p1, p0, Landroidx/car/drawer/CarDrawerController;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    sget v0, Landroidx/car/R$id;->drawer_title:I

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mTitleView:Landroid/widget/TextView;

    sget v0, Landroidx/car/R$id;->drawer_list:I

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/car/widget/PagedListView;

    iput-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mDrawerList:Landroidx/car/widget/PagedListView;

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mDrawerList:Landroidx/car/widget/PagedListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/car/widget/PagedListView;->setMaxPages(I)V

    sget v0, Landroidx/car/R$id;->drawer_progress:I

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mProgressBar:Landroid/widget/ProgressBar;

    sget v0, Landroidx/car/R$id;->drawer_back_button:I

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroidx/car/drawer/-$$Lambda$CarDrawerController$F97CpR0qyQOWMvQPEHU83XWDClM;

    invoke-direct {v1, p0}, Landroidx/car/drawer/-$$Lambda$CarDrawerController$F97CpR0qyQOWMvQPEHU83XWDClM;-><init>(Landroidx/car/drawer/CarDrawerController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Landroidx/car/drawer/CarDrawerController;->setupDrawerToggling()V

    return-void
.end method

.method static synthetic access$000(Landroidx/car/drawer/CarDrawerController;)V
    .locals 0

    invoke-direct {p0}, Landroidx/car/drawer/CarDrawerController;->cleanupStackAndShowRoot()V

    return-void
.end method

.method private cleanupStackAndShowRoot()V
    .locals 2

    :goto_0
    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mAdapterStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mAdapterStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/drawer/CarDrawerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/car/drawer/CarDrawerAdapter;->setTitleChangeListener(Landroidx/car/drawer/CarDrawerAdapter$TitleChangeListener;)V

    invoke-virtual {v0}, Landroidx/car/drawer/CarDrawerAdapter;->cleanup()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mAdapterStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/drawer/CarDrawerAdapter;

    invoke-direct {p0, v0}, Landroidx/car/drawer/CarDrawerController;->setDisplayAdapter(Landroidx/car/drawer/CarDrawerAdapter;)V

    sget v0, Landroidx/car/drawer/CarDrawerController;->NAVIGATE_UP_ANIM:I

    invoke-direct {p0, v0}, Landroidx/car/drawer/CarDrawerController;->runLayoutAnimation(I)V

    return-void
.end method

.method public static synthetic lambda$143s3uzS_tVIXCaXuMKaMWlFwZE(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$new$28(Landroidx/car/drawer/CarDrawerController;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroidx/car/drawer/CarDrawerController;->maybeHandleUpClick()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/car/drawer/CarDrawerController;->closeDrawer()V

    :cond_0
    return-void
.end method

.method private maybeHandleUpClick()Z
    .locals 3

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mAdapterStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mAdapterStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/drawer/CarDrawerAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/car/drawer/CarDrawerAdapter;->setTitleChangeListener(Landroidx/car/drawer/CarDrawerAdapter$TitleChangeListener;)V

    invoke-virtual {v0}, Landroidx/car/drawer/CarDrawerAdapter;->cleanup()V

    iget-object v2, p0, Landroidx/car/drawer/CarDrawerController;->mAdapterStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/car/drawer/CarDrawerAdapter;

    invoke-direct {p0, v2}, Landroidx/car/drawer/CarDrawerController;->setDisplayAdapter(Landroidx/car/drawer/CarDrawerAdapter;)V

    sget v2, Landroidx/car/drawer/CarDrawerController;->NAVIGATE_UP_ANIM:I

    invoke-direct {p0, v2}, Landroidx/car/drawer/CarDrawerController;->runLayoutAnimation(I)V

    return v1
.end method

.method private runLayoutAnimation(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mDrawerList:Landroidx/car/widget/PagedListView;

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/drawer/CarDrawerController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->scheduleLayoutAnimation()V

    return-void
.end method

.method private setDisplayAdapter(Landroidx/car/drawer/CarDrawerAdapter;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/car/drawer/CarDrawerController;->setToolbarTitleFrom(Landroidx/car/drawer/CarDrawerAdapter;)V

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mDrawerList:Landroidx/car/widget/PagedListView;

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private setToolbarTitleFrom(Landroidx/car/drawer/CarDrawerAdapter;)V
    .locals 2

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroidx/car/drawer/CarDrawerAdapter;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/car/drawer/-$$Lambda$CarDrawerController$143s3uzS_tVIXCaXuMKaMWlFwZE;

    invoke-direct {v1, v0}, Landroidx/car/drawer/-$$Lambda$CarDrawerController$143s3uzS_tVIXCaXuMKaMWlFwZE;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, v1}, Landroidx/car/drawer/CarDrawerAdapter;->setTitleChangeListener(Landroidx/car/drawer/CarDrawerAdapter$TitleChangeListener;)V

    return-void
.end method

.method private setupDrawerToggling()V
    .locals 2

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroidx/car/drawer/CarDrawerController;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Landroidx/car/drawer/CarDrawerController$1;

    invoke-direct {v1, p0}, Landroidx/car/drawer/CarDrawerController$1;-><init>(Landroidx/car/drawer/CarDrawerController;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    return-void
.end method


# virtual methods
.method public closeDrawer()V
    .locals 2

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/car/drawer/CarDrawerController;->maybeHandleUpClick()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public scrollToPosition(I)V
    .locals 1

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mDrawerList:Landroidx/car/widget/PagedListView;

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public setRootAdapter(Landroidx/car/drawer/CarDrawerAdapter;)V
    .locals 1
    .param p1    # Landroidx/car/drawer/CarDrawerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mAdapterStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mAdapterStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mAdapterStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroidx/car/drawer/CarDrawerController;->setDisplayAdapter(Landroidx/car/drawer/CarDrawerAdapter;)V

    return-void
.end method

.method public syncState()V
    .locals 1

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerController;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    return-void
.end method
