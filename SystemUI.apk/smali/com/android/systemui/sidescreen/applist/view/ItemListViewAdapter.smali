.class public Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ItemListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mView:Lcom/android/systemui/sidescreen/applist/view/ItemListView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/sidescreen/applist/view/ItemListView;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;->mView:Lcom/android/systemui/sidescreen/applist/view/ItemListView;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;->mView:Lcom/android/systemui/sidescreen/applist/view/ItemListView;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;->onBindViewHolder(Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d020a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;

    invoke-direct {v1, v0}, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;->onViewAttachedToWindow(Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;->mView:Lcom/android/systemui/sidescreen/applist/view/ItemListView;

    invoke-virtual {v1}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->getItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;

    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->onBind(Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;Lcom/android/systemui/sidescreen/applist/model/ItemInfo;)V

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;->onViewDetachedFromWindow(Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lcom/android/systemui/sidescreen/applist/view/ItemInfoViewHolder;->onUnbind()V

    return-void
.end method

.method public removeItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;->mView:Lcom/android/systemui/sidescreen/applist/view/ItemListView;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;->notifyItemRemoved(I)V

    return-void
.end method
