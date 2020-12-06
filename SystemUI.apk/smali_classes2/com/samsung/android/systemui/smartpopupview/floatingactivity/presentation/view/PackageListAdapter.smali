.class public Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PackageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;,
        Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mItemsProvider:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemsProvider;

.field onItemClickListener:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemsProvider;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;->mItemsProvider:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemsProvider;

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;->onItemClickListener:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter$OnItemClickListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter$OnItemClickListener;->onUserItemClicked(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;)V

    invoke-virtual {p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;->getPackageState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;->appSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;->appSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;->mItemsProvider:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemsProvider;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;->mItemsProvider:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemsProvider;

    invoke-interface {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemsProvider;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;->mItemsProvider:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemsProvider;

    invoke-interface {v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemsProvider;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;

    iget-object v2, v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;->getPackageLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;->getPackageIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;->appSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;->getPackageState()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    sget-boolean v2, Lcom/samsung/android/systemui/smartpopupview/Rune;->ENABLE_APP_SUGGESTION:Z

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;->mItemsProvider:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemsProvider;

    invoke-interface {v5}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemsProvider;->getLastSuggestPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;->appDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;->appCustomDivider:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/DrawerDividerView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/DrawerDividerView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;->appDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;->appCustomDivider:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/DrawerDividerView;

    invoke-virtual {v2, v4}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/DrawerDividerView;->setVisibility(I)V

    :goto_0
    iget-object v2, v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;->relativeLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/-$$Lambda$PackageListAdapter$1_TlZyAIF53eIVOm279eTIXVXXI;

    invoke-direct {v3, p0, v1, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/-$$Lambda$PackageListAdapter$1_TlZyAIF53eIVOm279eTIXVXXI;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;->appSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$1;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0200

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter$PackageItemViewHolder;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;Landroid/view/View;)V

    return-object v2
.end method
