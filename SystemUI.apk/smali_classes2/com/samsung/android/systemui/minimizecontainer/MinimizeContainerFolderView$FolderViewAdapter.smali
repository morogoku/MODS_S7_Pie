.class Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MinimizeContainerFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->getMinimizeTasksCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;->onBindViewHolder(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;
    .locals 5

    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$1200(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0113

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;->onViewAttachedToWindow(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerManager;->getMinimizeTaskItem(I)Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->access$1302(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->access$1300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->getAppLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->access$1400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->access$1400(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->access$1500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->access$1300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeTaskItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->access$1500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->access$1500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->access$1500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->access$1500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v3}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$1600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderViewAdapter;->onViewDetachedFromWindow(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->access$1500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->access$1500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->access$1500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;->access$1500(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
