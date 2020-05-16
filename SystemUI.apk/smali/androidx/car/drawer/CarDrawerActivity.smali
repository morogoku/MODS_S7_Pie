.class public Landroidx/car/drawer/CarDrawerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CarDrawerActivity.java"


# instance fields
.field private mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private mDrawerController:Landroidx/car/drawer/CarDrawerController;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private getThemeColorPrimary()I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroidx/car/drawer/CarDrawerActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010433

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->data:I

    return v1
.end method


# virtual methods
.method protected getRootAdapter()Landroidx/car/drawer/CarDrawerAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerActivity;->mDrawerController:Landroidx/car/drawer/CarDrawerController;

    invoke-virtual {v0, p1}, Landroidx/car/drawer/CarDrawerController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Landroidx/car/R$layout;->car_drawer_activity:I

    invoke-virtual {p0, v0}, Landroidx/car/drawer/CarDrawerActivity;->setContentView(I)V

    sget v0, Landroidx/car/R$id;->appbar:I

    invoke-virtual {p0, v0}, Landroidx/car/drawer/CarDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Landroidx/car/drawer/CarDrawerActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0}, Landroidx/car/drawer/CarDrawerActivity;->getThemeColorPrimary()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroidx/car/drawer/CarDrawerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/car/R$dimen;->car_app_bar_default_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/car/drawer/CarDrawerActivity;->setToolbarElevation(F)V

    sget v0, Landroidx/car/R$id;->drawer_layout:I

    invoke-virtual {p0, v0}, Landroidx/car/drawer/CarDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Landroid/support/v7/app/ActionBarDrawerToggle;

    sget v2, Landroidx/car/R$string;->car_drawer_open:I

    sget v3, Landroidx/car/R$string;->car_drawer_close:I

    invoke-direct {v1, p0, v0, v2, v3}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    sget v2, Landroidx/car/R$id;->car_toolbar:I

    invoke-virtual {p0, v2}, Landroidx/car/drawer/CarDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    iput-object v2, p0, Landroidx/car/drawer/CarDrawerActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroidx/car/drawer/CarDrawerActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v2}, Landroidx/car/drawer/CarDrawerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    new-instance v2, Landroidx/car/drawer/CarDrawerController;

    invoke-direct {v2, v0, v1}, Landroidx/car/drawer/CarDrawerController;-><init>(Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/app/ActionBarDrawerToggle;)V

    iput-object v2, p0, Landroidx/car/drawer/CarDrawerActivity;->mDrawerController:Landroidx/car/drawer/CarDrawerController;

    invoke-virtual {p0}, Landroidx/car/drawer/CarDrawerActivity;->getRootAdapter()Landroidx/car/drawer/CarDrawerAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroidx/car/drawer/CarDrawerActivity;->mDrawerController:Landroidx/car/drawer/CarDrawerController;

    invoke-virtual {v3, v2}, Landroidx/car/drawer/CarDrawerController;->setRootAdapter(Landroidx/car/drawer/CarDrawerAdapter;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/car/drawer/CarDrawerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Landroidx/car/drawer/CarDrawerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerActivity;->mDrawerController:Landroidx/car/drawer/CarDrawerController;

    invoke-virtual {v0, p1}, Landroidx/car/drawer/CarDrawerController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerActivity;->mDrawerController:Landroidx/car/drawer/CarDrawerController;

    invoke-virtual {v0}, Landroidx/car/drawer/CarDrawerController;->syncState()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerActivity;->mDrawerController:Landroidx/car/drawer/CarDrawerController;

    invoke-virtual {v0}, Landroidx/car/drawer/CarDrawerController;->closeDrawer()V

    return-void
.end method

.method public setToolbarElevation(F)V
    .locals 2

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/AppBarLayout;->setElevation(F)V

    return-void
.end method
