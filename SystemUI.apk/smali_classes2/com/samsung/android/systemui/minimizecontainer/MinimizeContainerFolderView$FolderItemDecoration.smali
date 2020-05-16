.class public Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "MinimizeContainerFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FolderItemDecoration"
.end annotation


# instance fields
.field mItemMargin:Landroid/graphics/Rect;

.field mItemOverlapWidth:I

.field mItemSpace:I

.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070445

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemSpace:I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070444

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemOverlapWidth:I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070441

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070443

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070442

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$600(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070440

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public getItemMargin()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$1000(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->getItemCount()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;

    invoke-static {v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;->access$1100(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemSpace:I

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput v4, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, p1, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemSpace:I

    :goto_1
    iput v3, p1, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, p1, Landroid/graphics/Rect;->left:I

    :cond_3
    :goto_2
    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_5

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, p1, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    :cond_5
    :goto_3
    return-void
.end method
