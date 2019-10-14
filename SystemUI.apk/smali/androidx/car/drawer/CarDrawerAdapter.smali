.class public abstract Landroidx/car/drawer/CarDrawerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CarDrawerAdapter.java"

# interfaces
.implements Landroidx/car/drawer/DrawerItemClickListener;
.implements Landroidx/car/widget/PagedListView$ItemCap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/drawer/CarDrawerAdapter$TitleChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroidx/car/drawer/DrawerItemViewHolder;",
        ">;",
        "Landroidx/car/drawer/DrawerItemClickListener;",
        "Landroidx/car/widget/PagedListView$ItemCap;"
    }
.end annotation


# instance fields
.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleChangeListener:Landroidx/car/drawer/CarDrawerAdapter$TitleChangeListener;


# virtual methods
.method public cleanup()V
    .locals 0

    return-void
.end method

.method getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/car/drawer/CarDrawerAdapter;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method setTitleChangeListener(Landroidx/car/drawer/CarDrawerAdapter$TitleChangeListener;)V
    .locals 0
    .param p1    # Landroidx/car/drawer/CarDrawerAdapter$TitleChangeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/car/drawer/CarDrawerAdapter;->mTitleChangeListener:Landroidx/car/drawer/CarDrawerAdapter$TitleChangeListener;

    return-void
.end method
